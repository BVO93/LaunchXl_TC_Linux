

/*
 *  ======== main_tirtos.c ========
 */
#include <stdint.h>

/* POSIX Header files */
#include <pthread.h>

/* RTOS header files */
#include <ti/sysbios/BIOS.h>

/* Example/Board Header files */
#include <ti/drivers/Board.h>

extern void *mainThread(void *arg0);

/* Stack size in bytes */
#define THREADSTACKSIZE    1024

// Message queue
#include <mqueue.h>

#include <ti/drivers/GPIO.h>
#include "Board.h"




extern void *alarmThread(void *arg0);
extern void *mainThread(void *arg0);

#define THREADSTACKSIZE    1024


// definitions of the queue
#define MSG_SIZE sizeof(int)
#define MSG_NUM 4

// descriptor of the queue
mqd_t mqdes;
/*
 *  ======== main ========
 */
int main(void)
{
    pthread_t           thread;
    pthread_t           alarm;
    pthread_attr_t      attrs;
    struct sched_param  priParam;
    int                 retc;

    // Queue declarations
    struct mq_attr mqAttrs;

    /* Call driver init functions */
    Board_init();

    // setting up of the queue
    GPIO_init();
    GPIO_setConfig(Board_GPIO_LED0, GPIO_CFG_OUT_STD | GPIO_CFG_OUT_LOW);
    GPIO_write(Board_GPIO_LED0, Board_GPIO_LED_OFF);

    mqAttrs.mq_maxmsg = MSG_NUM;
    mqAttrs.mq_msgsize = MSG_SIZE;
    mqAttrs.mq_flags = 0;
    mqdes = mq_open("alarm", O_RDWR | O_CREAT, 0064, &mqAttrs);

    // O_RDWR = both open for sending and receiving
    // O_CREAT uses flag 0064 = USer and group can read write, other only read

    if(mqdes == (mqd_t)-1){
        // Mqdes open failed
        while(1);
    }



    /* Initialize the attributes structure with default values */
    pthread_attr_init(&attrs);

    /* Set priority, detach state, and stack size attributes */
    priParam.sched_priority = 1;
    retc = pthread_attr_setschedparam(&attrs, &priParam);
    retc |= pthread_attr_setdetachstate(&attrs, PTHREAD_CREATE_DETACHED);
    retc |= pthread_attr_setstacksize(&attrs, THREADSTACKSIZE);
    if (retc != 0) {
        /* failed to set attributes */
        while (1) {}
    }

    retc = pthread_create(&thread, &attrs, mainThread, (void*)&mqdes);
    if (retc != 0) {
        /* pthread_create() failed */
        while (1) {}
    }

    // Making of the alarm thread
    priParam.sched_priority = 2;
    pthread_attr_setschedparam(&attrs, &priParam);

    retc = pthread_create(&alarm, &attrs, alarmThread, (void*)&mqdes);
    if(retc!= 0){
        // Pthread create failed
        while(1);
    }




    BIOS_start();

    return (0);
}
