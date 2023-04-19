/*
 * hw_def.h
 *
 *  Created on: 2023. 2. 19.
 *      Author: encanto
 */

#ifndef SRC_HW_HW_DEF_H_
#define SRC_HW_HW_DEF_H_

/* Includes ------------------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "def.h"
#include "bsp.h"
#include "bsp/stm32f4xx_it.h"

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */
/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
#define _HW_DEF_RTOS_MEM_SIZE(x)			((x)/4)

#define _HW_DEF_RTOS_THREAD_PRI_MAIN		osPriorityNormal
#define _HW_DEF_RTOS_THREAD_PRI_LED		osPriorityNormal

#define _HW_DEF_RTOS_THREAD_MEM_MAIN		_HW_DEF_RTOS_MEM_SIZE( 4*128 )
#define _HW_DEF_RTOS_THREAD_MEM_LED		_HW_DEF_RTOS_MEM_SIZE( 4*128 )

#define _USE_HW_RTOS

/* USER CODE END PD */

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN PFP */
/* USER CODE END PFP */

#endif /* SRC_HW_HW_DEF_H_ */
