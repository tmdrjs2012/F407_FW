/*
 * gpio.h
 *
 *  Created on: Sep 4, 2022
 *      Author: encanto
 */

#ifndef SRC_HW_CORE_GPIO_H_
#define SRC_HW_CORE_GPIO_H_

/* Includes ------------------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "hw_def.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */
/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
#define Gpio_Read(GPIOx, PIN)				HAL_GPIO_ReadPin(GPIOx, PIN)
#define Gpio_Write(GPIOx, PIN, State)		HAL_GPIO_WritePin(GPIOx, PIN, State)
#define Gpio_Toggle(GPIOx, PIN)				HAL_GPIO_TogglePin(GPIOx, PIN)
/* USER CODE END PD */

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN PFP */
void GpioInit(void);
/* USER CODE END PFP */

#endif /* SRC_HW_CORE_GPIO_H_ */
