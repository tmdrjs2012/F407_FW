/*
 * gpio.c
 *
 *  Created on: Sep 4, 2022
 *      Author: encanto
 */

#ifndef SRC_HW_CORE_GPIO_C_
#define SRC_HW_CORE_GPIO_C_

/* Includes ------------------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "hw_def.h"
#include "gpio.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */
/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
#define GPIO_LED_EN		1
#define GPIO_BUTTON_EN	1
/* USER CODE END PD */

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN PFP */
/* USER CODE END PFP */


/*
 * brief: GPIO Initialize function
 */
void GpioInit(void)
{
	GPIO_InitTypeDef GPIO_InitStruct;



#if GPIO_LED_EN
	GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
	GPIO_InitStruct.Pull = GPIO_PULLUP;
	GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;

	GPIO_InitStruct.Pin = GPIO_PIN_12 | GPIO_PIN_13 | GPIO_PIN_14 | GPIO_PIN_15;
	HAL_GPIO_Init(GPIOD, &GPIO_InitStruct);
#endif

#if GPIO_BUTTON_EN
	/*Configure GPIO pin : B1_Pin */
	GPIO_InitStruct.Mode = GPIO_MODE_IT_RISING;
	GPIO_InitStruct.Pull = GPIO_NOPULL;
	GPIO_InitStruct.Pin = GPIO_PIN_0;
	HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

	HAL_NVIC_SetPriority(EXTI0_IRQn, 0, 0);
	HAL_NVIC_EnableIRQ(EXTI0_IRQn);
#endif
}

#endif /* SRC_HW_CORE_GPIO_C_ */

