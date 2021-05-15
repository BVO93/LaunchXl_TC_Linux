

/* TI-RTOS Header files */
#include <xdc/std.h>
#include <ti/sysbios/BIOS.h>
#include <ti/sysbios/knl/Task.h>

#include <ti/drivers/GPIO.h>

/* Example/Board Header files */
#include "Board.h"

void myDelay(int count);

/* Could be anything, like computing primes */
#define FakeBlockingSlowWork()   myDelay(12000000)
#define FakeBlockingFastWork()   myDelay(2000000)

Task_Struct workTask;
/* Make sure we have nice 8-byte alignment on the stack to avoid wasting memory */
#pragma DATA_ALIGN(workTaskStack, 8)
#define STACKSIZE 1024
static uint8_t workTaskStack[STACKSIZE];

void doUrgentWork(void)
{
    GPIO_write(Board_GPIO_LED1, Board_GPIO_LED_OFF);
    FakeBlockingFastWork(); /* Pretend to do something useful but time-consuming */
    GPIO_write(Board_GPIO_LED1, Board_GPIO_LED_ON);
}

void doWork(void)
{
    GPIO_write(Board_GPIO_LED0, Board_GPIO_LED_OFF);
    FakeBlockingSlowWork(); /* Pretend to do something useful but time-consuming */
    GPIO_write(Board_GPIO_LED0, Board_GPIO_LED_ON);
}

Void workTaskFunc(UArg arg0, UArg arg1)
{
    while (1) {

        /* Do work */
        doWork();

        /* Wait a while, because doWork should be a periodic thing, not continuous.*/
        myDelay(24000000);
    }
}

/*
 *  ======== main ========
 *
 */
int main(void)
{
    Board_init();
    GPIO_init();

    /* Set up the led task */
    Task_Params workTaskParams;
    Task_Params_init(&workTaskParams);
    workTaskParams.stackSize = STACKSIZE;
    workTaskParams.priority = 2;
    workTaskParams.stack = &workTaskStack;

    Task_construct(&workTask, workTaskFunc, &workTaskParams, NULL);

    /* Start kernel. */
    BIOS_start();

    return (0);
}

/*
 *  ======== myDelay ========
 *  Assembly function to delay. Decrements the count until it is zero
 *  The exact duration depends on the processor speed.
 */
__asm("    .sect \".text:myDelay\"\n"
      "    .clink\n"
      "    .thumbfunc myDelay\n"
      "    .thumb\n"
      "    .global myDelay\n"
      "myDelay:\n"
      "    subs r0, #1\n"
      "    bne.n myDelay\n"
      "    bx lr\n");






///*
// *  ======== main_tirtos.c ========
// */
//#include <stdint.h>
//
///* POSIX Header files */
//#include <pthread.h>
//
///* RTOS header files */
//#include <ti/sysbios/BIOS.h>
//
///* Example/Board Header files */
//#include <ti/drivers/Board.h>
//
//extern void *mainThread(void *arg0);
//
///* Stack size in bytes */
//#define THREADSTACKSIZE    1024
//
///*
// *  ======== main ========
// */
//int main(void)
//{
//
//    pthread_t           thread;
//    pthread_attr_t      attrs;
//    struct sched_param  priParam;
//    int                 retc;
//
//    /* Call driver init functions */
//    Board_init();
//
//    /* Initialize the attributes structure with default values */
//    pthread_attr_init(&attrs);
//
//    /* Set priority, detach state, and stack size attributes */
//    priParam.sched_priority = 1;
//    retc = pthread_attr_setschedparam(&attrs, &priParam);
//    retc |= pthread_attr_setdetachstate(&attrs, PTHREAD_CREATE_DETACHED);
//    retc |= pthread_attr_setstacksize(&attrs, THREADSTACKSIZE);
//    if (retc != 0) {
//        /* failed to set attributes */
//        while (1) {}
//    }
//
//    retc = pthread_create(&thread, &attrs, mainThread, NULL);
//    if (retc != 0) {
//        /* pthread_create() failed */
//        while (1) {}
//    }
//
//    BIOS_start();
//
//    return (0);
//}
