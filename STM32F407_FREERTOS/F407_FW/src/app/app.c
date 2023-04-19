/*
 * app.c
 *
 *  Created on: 2023. 2. 19.
 *      Author: encanto
 */

#ifndef SRC_APP_APP_C_
#define SRC_APP_APP_C_

/* Includes ------------------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "app.h"
/* USER CODE END Includes */

/*
 *  brief: application initialize function
 */

#define QueueType				0
#define MessageQueueType		1

static void threadLed1(void const *argment);
static void threadLed2(void const *argment);

#if MessageQueueType
typedef struct _T_MESSAGE
{
	char *String;
	uint8_t state;
}
sTaskMessage;

osMessageQId myQueue01Handle;
#endif

#if QueueType
xQueueHandle myQueue;
#endif

void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
{
	static uint32_t  pTick = 0;

	if(GPIO_Pin == GPIO_PIN_0)
	{
		if(HAL_GetTick() - pTick > 300)
		{
			pTick = HAL_GetTick();
			Gpio_Toggle(GPIOD, 1 << 15);
		}
	}
}

void appInit(void)
{

#if MessageQueueType
	osMessageQDef(myQueue01, 16, sTaskMessage);
	myQueue01Handle = osMessageCreate(osMessageQ(myQueue01), NULL);
#endif

	osThreadDef(threadLed1, threadLed1, _HW_DEF_RTOS_THREAD_PRI_LED, 0,
				_HW_DEF_RTOS_THREAD_MEM_LED);

	if(osThreadCreate(osThread(threadLed1), NULL) != NULL)
	{
		// Do Thread
	}
	else
	{
		// Fail
		while(1);
	}

	/* Create the thread(s) */
	osThreadDef(threadLed2, threadLed2, _HW_DEF_RTOS_THREAD_PRI_LED, 0,
				_HW_DEF_RTOS_THREAD_MEM_LED);

	if(osThreadCreate(osThread(threadLed2), NULL) != NULL)
	{
		// Do Thread
	}
	else
	{
		// Fail
		while(1);
	}
}

/*
 *  brief: application Main loop function
 */
void appMain(void)
{
	osKernelStart();

	while(1)
	{
	}
}

static void threadLed1(void const *argument)
{
	UNUSED(argument);

	uint8_t led1_state = 1;

#if MessageQueueType
	sTaskMessage sMessage;
#endif

#if QueueType
	myQueue = xQueueCreate(5, sizeof(led1_state));
#endif

	while(1)
	{
		//Gpio_Write(GPIOD, 1 << 12, 1);
		Gpio_Toggle(GPIOD, 1 << 12);

		led1_state ^= 1;

#if MessageQueueType
		sMessage.String = "Hello World\r\n";
		sMessage.state = led1_state;
		osMessagePut(myQueue01Handle,(void *)(&sMessage),100);
#endif
#if QueueType
		xQueueSend(myQueue, &led1_state, 100);
#endif

		delay(1000);
	}
}

static void threadLed2(void const *argument)
{
	UNUSED(argument);

#if MessageQueueType
	sTaskMessage *pRMessage;
	osEvent eRValue;
#endif

#if QueueType
	uint8_t rx_state;
#endif

	while(1)
	{
		// get message queue

#if MessageQueueType
		eRValue = osMessageGet(myQueue01Handle,500);

		if(eRValue.status == osEventMessage)
		{
			pRMessage = eRValue.value.p;
			Gpio_Write(GPIOD, 1 << 14 , pRMessage->state);
		}
#endif

#ifndef QueueType
		if(myQueue != 0)
		{
			xQueueReceive(myQueue, &rx_state, 500);
			Gpio_Write(GPIOD, 1 << 14 , rx_state);
		}
#endif
	}
}
#endif /* SRC_APP_APP_C_ */
