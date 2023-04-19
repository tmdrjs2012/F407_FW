################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/bsp/cmsis/system_stm32f4xx.c 

OBJS += \
./src/bsp/cmsis/system_stm32f4xx.o 

C_DEPS += \
./src/bsp/cmsis/system_stm32f4xx.d 


# Each subdirectory must supply rules for building sources it contributes
src/bsp/cmsis/%.o src/bsp/cmsis/%.su: ../src/bsp/cmsis/%.c src/bsp/cmsis/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F407xx -c -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src" -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src/bsp/cmsis" -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src/bsp/cmsis/include" -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src/lib/STM32F4xx_HAL_Driver/Inc" -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src/app" -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src/bsp" -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src/common" -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src/hw" -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src/lib/FreeRTOS/Source/CMSIS_RTOS" -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src/lib/FreeRTOS/Source/include" -I"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src/lib/FreeRTOS/Source/portable/GCC/ARM_CM4F" -Og -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=softfp -mthumb -o "$@"

clean: clean-src-2f-bsp-2f-cmsis

clean-src-2f-bsp-2f-cmsis:
	-$(RM) ./src/bsp/cmsis/system_stm32f4xx.d ./src/bsp/cmsis/system_stm32f4xx.o ./src/bsp/cmsis/system_stm32f4xx.su

.PHONY: clean-src-2f-bsp-2f-cmsis

