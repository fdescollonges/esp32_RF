################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ..\makefile.init

RM := del 

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include libraries\rc-switch\subdir.mk
-include libraries\WiFi\src\subdir.mk
-include core\core\libb64\subdir.mk
-include core\core\subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(INO_DEPS)),)
-include $(INO_DEPS)
endif
ifneq ($(strip $(PDE_DEPS)),)
-include $(PDE_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ..\makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
AR += \
C:\Data\IBM\work\IoT\sloeber\esp32_RF\Release\arduino.ar \

ELF += \
esp32_RF.elf \

HEX += \
esp32_RF.hex \


# All Target
all: esp32_RF

# Tool invocations
esp32_RF: $(HEX)
	@echo 'Building target: $@'
	@echo 'Printing size:'
	"C:/Data/Work/arduino-esp32/tools/xtensa-esp32-elf/bin/xtensa-esp32-elf-size" -A "C:/Data/IBM/work/IoT/sloeber/esp32_RF/Release/esp32_RF.elf"
	@echo 'Finished building target: $@'
	@echo ' '

C:\Data\IBM\work\IoT\sloeber\esp32_RF\Release\arduino.ar: $(AR_OBJ)
	@echo 'Starting archiver'
	"C:/Data/Work/arduino-esp32/tools/xtensa-esp32-elf/bin/xtensa-esp32-elf-ar" cru "C:\Data\IBM\work\IoT\sloeber\esp32_RF/Release/arduino.ar"    C:/Data/IBM/work/IoT/sloeber/esp32_RF/Release/arduino.ar $(AR_OBJ)
	@echo 'Finished building: $@'
	@echo ' '

esp32_RF.elf: $(LINK_OBJ) $(AR)
	@echo 'Starting combiner'
	"C:/Data/Work/arduino-esp32/tools/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc" -nostdlib "-LC:/Data/Work/arduino-esp32/tools/sdk/lib" "-LC:/Data/Work/arduino-esp32/tools/sdk/ld" -T esp32_out.ld -T esp32.common.ld -T esp32.rom.ld -T esp32.peripherals.ld -T esp32.rom.spiram_incompatible_fns.ld -u ld_include_panic_highint_hdl -u call_user_start_cpu0 -Wl,--gc-sections -Wl,-static -Wl,--undefined=uxTopUsedPriority -u __cxa_guard_dummy -u __cxx_fatal_exception -Wl,--start-group   $(LINK_OBJ)  "C:\Data\IBM\work\IoT\sloeber\esp32_RF/Release/arduino.ar" -lgcc -lopenssl -lbtdm_app -lfatfs -lwps -lcoexist -lwear_levelling -lhal -lnewlib -ldriver -lbootloader_support -lpp -lsmartconfig -ljsmn -lwpa -lethernet -lphy -lapp_trace -lconsole -lulp -lwpa_supplicant -lfreertos -lbt -lmicro-ecc -lcxx -lxtensa-debug-module -lmdns -lvfs -lsoc -lcore -lsdmmc -lcoap -ltcpip_adapter -lc_nano -lrtc -lspi_flash -lwpa2 -lesp32 -lapp_update -lnghttp -lspiffs -lespnow -lnvs_flash -lesp_adc_cal -llog -lexpat -lm -lc -lheap -lmbedtls -llwip -lnet80211 -lpthread -ljson -lstdc++ -Wl,--end-group -Wl,-EL -o "C:\Data\IBM\work\IoT\sloeber\esp32_RF/Release/esp32_RF.elf" C:/Data/IBM/work/IoT/sloeber/esp32_RF/Release/arduino.ar
	@echo 'Finished building: $@'
	@echo ' '

esp32_RF.hex: $(ELF)
	@echo 'Create eeprom image'
	${A.RECIPE.OBJCOPY.EEP.PATTERN}
	${A.RECIPE.OBJCOPY.HEX.PATTERN}
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(C_UPPER_DEPS)$(PDE_DEPS)$(C_DEPS)$(AR)$(CC_DEPS)$(AR_OBJ)$(C++_DEPS)$(LINK_OBJ)$(CXX_DEPS)$(ASM_DEPS)$(HEX)$(INO_DEPS)$(SIZEDUMMY)$(S_UPPER_DEPS)$(ELF)$(CPP_DEPS)
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ..\makefile.targets
