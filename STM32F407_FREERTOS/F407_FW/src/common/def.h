/*
 * def.h
 *
 *  Created on: 2023. 2. 19.
 *      Author: encanto
 */

#ifndef SRC_COMMON_DEF_H_
#define SRC_COMMON_DEF_H_

/* Includes ------------------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "stdio.h"
#include "stdint.h"
#include "stdbool.h"
#include "stdlib.h"
#include "string.h"
#include <stddef.h>
#include <stdarg.h>
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */
/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
#define _DEF_UART1          0
#define _DEF_UART2          1
#define _DEF_UART3          2
#define _DEF_UART4          3

#define _DEF_PWM1				0x00000000U
#define _DEF_PWM2				0x00000004U
#define _DEF_PWM3				0x00000008U
/* USER CODE END PD */

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN PFP */
/* USER CODE END PFP */

#endif /* SRC_COMMON_DEF_H_ */
