################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/ReSyLib/periphery/actor.cpp \
../src/ReSyLib/periphery/bus.cpp \
../src/ReSyLib/periphery/heartbeat.cpp \
../src/ReSyLib/periphery/sensor.cpp 

OBJS += \
./src/ReSyLib/periphery/actor.o \
./src/ReSyLib/periphery/bus.o \
./src/ReSyLib/periphery/heartbeat.o \
./src/ReSyLib/periphery/sensor.o 

CPP_DEPS += \
./src/ReSyLib/periphery/actor.d \
./src/ReSyLib/periphery/bus.d \
./src/ReSyLib/periphery/heartbeat.d \
./src/ReSyLib/periphery/sensor.d 


# Each subdirectory must supply rules for building sources it contributes
src/ReSyLib/periphery/%.o: ../src/ReSyLib/periphery/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	arm-linux-gnueabihf-g++ -std=c++1y -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


