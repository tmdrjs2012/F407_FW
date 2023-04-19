################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/lib/FreeRTOS/Source/portable/MemMang/heap_4.c 

OBJS += \
./src/lib/FreeRTOS/Source/portable/MemMang/heap_4.o 

C_DEPS += \
./src/lib/FreeRTOS/Source/portable/MemMang/heap_4.d 


# Each subdirectory must supply rules for building sources it contributes
src/lib/FreeRTOS/Source/portable/MemMang/%.o src/lib/FreeRTOS/Source/portable/MemMang/%.su: ../src/lib/FreeRTOS/Source/portable/MemMang/%.c src/lib/FreeRTOS/Source/portable/MemMang/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F407xx -c -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src" -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src/bsp/cmsis" -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src/bsp/cmsis/include" -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src/lib/STM32F4xx_HAL_Driver/Inc" -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src/app" -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src/bsp" -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src/common" -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src/hw" -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src/lib/FreeRTOS/Source/CMSIS_RTOS" -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src/lib/FreeRTOS/Source/include" -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src/lib/FreeRTOS/Source/portable/GCC/ARM_CM4F" -Og -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=softfp -mthumb -o "$@"

clean: clean-src-2f-lib-2f-FreeRTOS-2f-Source-2f-portable-2f-MemMang

clean-src-2f-lib-2f-FreeRTOS-2f-Source-2f-portable-2f-MemMang:
	-$(RM) ./src/lib/FreeRTOS/Source/portable/MemMang/heap_4.d ./src/lib/FreeRTOS/Source/portable/MemMang/heap_4.o ./src/lib/FreeRTOS/Source/portable/MemMang/heap_4.su

.PHONY: clean-src-2f-lib-2f-FreeRTOS-2f-Source-2f-portable-2f-MemMang

