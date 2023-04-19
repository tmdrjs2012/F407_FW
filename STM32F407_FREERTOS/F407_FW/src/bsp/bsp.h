/*
 * bsp.h
 *
 *  Created on: 2023. 2. 19.
 *      Author: encanto
 */

#ifndef SRC_BSP_BSP_H_
#define SRC_BSP_BSP_H_

/* Includes ------------------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "def.h"
#include "stm32f4xx_hal.h"
#include "cmsis_os.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */
/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN PFP */
void bspInit(void);

void delay(uint32_t time_ms);
uint32_t millis(void);

/* USER CODE END PFP */

#endif /* SRC_BSP_BSP_H_ */
