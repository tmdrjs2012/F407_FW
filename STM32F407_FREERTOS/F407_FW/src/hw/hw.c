/*
 * hw.c
 *
 *  Created on: 2023. 2. 19.
 *      Author: encanto
 */

#ifndef SRC_HW_HW_C_
#define SRC_HW_HW_C_

/* Includes ------------------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "hw.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */
/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */


/*
 * brief: hardware Initialize function
 */
void hwInit(void)
{
	bspInit();

	GpioInit();
}

#endif /* SRC_HW_HW_C_ */
