// alarm.c

#include <pthread.h>
#include <mqueue.h>

// Driver header file
#include <ti/drivers/GPIO.h>
#include "Board.h"

// alarm thread

void *alarmThread(void *arg0)
{
    mqd_t * mqdes = arg0;
    int msg;

    while(mq_receive(*mqdes, (char *)&msg, sizeof(msg), NULL) != -1){



        if( GPIO_read(Board_GPIO_LED0)){
            GPIO_write(Board_GPIO_LED0, Board_GPIO_LED_OFF);
        }
        else{
            GPIO_write(Board_GPIO_LED0, Board_GPIO_LED_ON);
        }


    }


    return(0);
}
