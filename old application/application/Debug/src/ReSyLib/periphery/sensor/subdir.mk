################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/ReSyLib/periphery/sensor/joystickDigital.cpp \
../src/ReSyLib/periphery/sensor/switch.cpp 

OBJS += \
./src/ReSyLib/periphery/sensor/joystickDigital.o \
./src/ReSyLib/periphery/sensor/switch.o 

CPP_DEPS += \
./src/ReSyLib/periphery/sensor/joystickDigital.d \
./src/ReSyLib/periphery/sensor/switch.d 


# Each subdirectory must supply rules for building sources it contributes
src/ReSyLib/periphery/sensor/%.o: ../src/ReSyLib/periphery/sensor/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	arm-linux-gnueabihf-g++ -std=c++1y -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


