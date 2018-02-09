################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
C:\Data\Work\arduino-esp32\libraries\SPIFFS\src\SPIFFS.cpp 

LINK_OBJ += \
.\libraries\SPIFFS\src\SPIFFS.cpp.o 

CPP_DEPS += \
.\libraries\SPIFFS\src\SPIFFS.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
libraries\SPIFFS\src\SPIFFS.cpp.o: C:\Data\Work\arduino-esp32\libraries\SPIFFS\src\SPIFFS.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:/Data/Work/arduino-esp32/tools/xtensa-esp32-elf/bin/xtensa-esp32-elf-g++" -DESP_PLATFORM "-DMBEDTLS_CONFIG_FILE=\"mbedtls/esp_config.h\"" -DHAVE_CONFIG_H "-IC:/Data/Work/arduino-esp32/tools/sdk/include/config" "-IC:/Data/Work/arduino-esp32/tools/sdk/include/bluedroid" "-IC:/Data/Work/arduino-esp32/tools/sdk/include/app_trace" "-IC:/Data/Work/arduino-esp32/tools/sdk/include/app_update" "-IC:/Data/Work/arduino-esp32/tools/sdk/include/bootloader_support" "-IC:/Data/Work/arduino-esp32/tools/sdk/include/bt" "-IC:/Data/Work/arduino-esp32/tools/sdk/include/driver" "-IC:/Data/Work/arduino-esp32/tools/sdk/include/esp32" "-IC:/Data/Work/arduino-esp32/tools/sdk/include/esp_adc_cal" "-IC:/Data/Work/arduino-esp32/tools/sdk/include/ethernet" "-IC:/Data/Work/arduino-esp32/tools/sdk/include/fatfs" "-IC:/Data/Work/arduino-esp32/tools/sdk/include/freertos" "-IC:/Data/Work/arduino-esp32/tools/sdk/include/heap" "-IC:/Data/Work/arduino-esp32/tools/sdk/include/jsmn" "-IC:/Data/Work/arduino-esp32/tools/sdk/include/log" "-IC:/Data/Work/arduino-esp32/tools/sdk/include/mdns" "-IC:/Data/Work/arduino-esp32/tools/sdk/include/mbedtls" "-IC:/Data/Work/arduino-esp32/tools/sdk/include/mbedtls_port" "-IC:/Data/Work/arduino-esp32/tools/sdk/include/newlib" "-IC:/Data/Work/arduino-esp32/tools/sdk/include/nvs_flash" "-IC:/Data/Work/arduino-esp32/tools/sdk/include/openssl" "-IC:/Data/Work/arduino-esp32/tools/sdk/include/spi_flash" "-IC:/Data/Work/arduino-esp32/tools/sdk/include/sdmmc" "-IC:/Data/Work/arduino-esp32/tools/sdk/include/spiffs" "-IC:/Data/Work/arduino-esp32/tools/sdk/include/tcpip_adapter" "-IC:/Data/Work/arduino-esp32/tools/sdk/include/ulp" "-IC:/Data/Work/arduino-esp32/tools/sdk/include/vfs" "-IC:/Data/Work/arduino-esp32/tools/sdk/include/wear_levelling" "-IC:/Data/Work/arduino-esp32/tools/sdk/include/xtensa-debug-module" "-IC:/Data/Work/arduino-esp32/tools/sdk/include/console" "-IC:/Data/Work/arduino-esp32/tools/sdk/include/soc" "-IC:/Data/Work/arduino-esp32/tools/sdk/include/newlib" "-IC:/Data/Work/arduino-esp32/tools/sdk/include/coap" "-IC:/Data/Work/arduino-esp32/tools/sdk/include/wpa_supplicant" "-IC:/Data/Work/arduino-esp32/tools/sdk/include/expat" "-IC:/Data/Work/arduino-esp32/tools/sdk/include/json" "-IC:/Data/Work/arduino-esp32/tools/sdk/include/nghttp" "-IC:/Data/Work/arduino-esp32/tools/sdk/include/lwip" -std=gnu++11 -fno-exceptions -Os -g3 -Wpointer-arith -fstack-protector -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -nostdlib -Wall -Werror=all -Wextra -Wno-error=unused-function -Wno-error=unused-but-set-variable -Wno-error=unused-variable -Wno-error=deprecated-declarations -Wno-unused-parameter -Wno-sign-compare -fno-rtti -c -DF_CPU=240000000L -DARDUINO=10802 -DARDUINO_ESP32_DEV -DARDUINO_ARCH_ARDUINO-ESP32 "-DARDUINO_BOARD=\"ESP32_DEV\"" -DESP32 -DCORE_DEBUG_LEVEL=0  -I"C:\Data\Work\arduino-esp32\cores\esp32" -I"C:\Data\Work\arduino-esp32\variants\doitESP32devkitV1" -I"C:\Data\Work\arduino-esp32\libraries\ESP32" -I"C:\Data\Work\arduino-esp32\libraries\ESP32\src" -I"C:\Data\Tools\sloeber\arduinoPlugin\libraries\ESP32httpUpdate\2.1.145" -I"C:\Data\Tools\sloeber\arduinoPlugin\libraries\ESP32httpUpdate\2.1.145\src" -I"C:\Data\Work\arduino-esp32\libraries\FS" -I"C:\Data\Work\arduino-esp32\libraries\FS\src" -I"C:\Data\Work\arduino-esp32\libraries\HTTPClient" -I"C:\Data\Work\arduino-esp32\libraries\HTTPClient\src" -I"C:\Data\Work\arduino-esp32\libraries\SPIFFS" -I"C:\Data\Work\arduino-esp32\libraries\SPIFFS\src" -I"C:\Data\Work\arduino-esp32\libraries\Update" -I"C:\Data\Work\arduino-esp32\libraries\Update\src" -I"C:\Data\Work\arduino-esp32\libraries\WiFi" -I"C:\Data\Work\arduino-esp32\libraries\WiFi\src" -I"C:\Data\Work\arduino-esp32\libraries\WiFiClientSecure" -I"C:\Data\Work\arduino-esp32\libraries\WiFiClientSecure\src" -I"C:\Data\Work\arduino-esp32\libraries\ESP32" -I"C:\Data\Work\arduino-esp32\libraries\ESP32\src" -I"C:\Data\Tools\sloeber\arduinoPlugin\libraries\ESP32httpUpdate\2.1.145" -I"C:\Data\Tools\sloeber\arduinoPlugin\libraries\ESP32httpUpdate\2.1.145\src" -I"C:\Data\Work\arduino-esp32\libraries\FS" -I"C:\Data\Work\arduino-esp32\libraries\FS\src" -I"C:\Data\Work\arduino-esp32\libraries\HTTPClient" -I"C:\Data\Work\arduino-esp32\libraries\HTTPClient\src" -I"C:\Data\Tools\sloeber\arduinoPlugin\libraries\rc-switch\2.6.2" -I"C:\Data\Work\arduino-esp32\libraries\SPIFFS" -I"C:\Data\Work\arduino-esp32\libraries\SPIFFS\src" -I"C:\Data\Work\arduino-esp32\libraries\Update" -I"C:\Data\Work\arduino-esp32\libraries\Update\src" -I"C:\Data\Work\arduino-esp32\libraries\WiFi" -I"C:\Data\Work\arduino-esp32\libraries\WiFi\src" -I"C:\Data\Work\arduino-esp32\libraries\WiFiClientSecure" -I"C:\Data\Work\arduino-esp32\libraries\WiFiClientSecure\src" -I"C:\Data\Tools\sloeber\arduinoPlugin\libraries\FreeRTOS\10.0.0-8" -I"C:\Data\Tools\sloeber\arduinoPlugin\libraries\FreeRTOS\10.0.0-8\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '


