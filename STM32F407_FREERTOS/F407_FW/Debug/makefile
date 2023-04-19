################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/lib/STM32F4xx_HAL_Driver/Src/Legacy/subdir.mk
-include src/lib/STM32F4xx_HAL_Driver/Src/subdir.mk
-include src/lib/FreeRTOS/Source/portable/MemMang/subdir.mk
-include src/lib/FreeRTOS/Source/portable/GCC/ARM_CM4F/subdir.mk
-include src/lib/FreeRTOS/Source/CMSIS_RTOS/subdir.mk
-include src/lib/FreeRTOS/Source/subdir.mk
-include src/hw/core/subdir.mk
-include src/hw/subdir.mk
-include src/bsp/startup/subdir.mk
-include src/bsp/cmsis/subdir.mk
-include src/bsp/subdir.mk
-include src/app/subdir.mk
-include src/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := F407_FW
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
F407_FW.elf \

MAP_FILES += \
F407_FW.map \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
F407_FW.list \


# All Target
all: main-build

# Main-build Target
main-build: F407_FW.elf secondary-outputs

# Tool invocations
F407_FW.elf F407_FW.map: $(OBJS) $(USER_OBJS) /home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src/bsp/ldscript/STM32F407VGTx_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-gcc -o "F407_FW.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"/home/encanto/MY_PROJECT/STM32/STMF4/STM32F407_FREERTOS/F407_FW/src/bsp/ldscript/STM32F407VGTx_FLASH.ld" --specs=nosys.specs -Wl,-Map="F407_FW.map" -Wl,--gc-sections -static --specs=nano.specs -mfloat-abi=softfp -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

F407_FW.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "F407_FW.list"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) F407_FW.elf F407_FW.list F407_FW.map default.size.stdout
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
