################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/ReSyLib/periphery/actor/LED.cpp \
../src/ReSyLib/periphery/actor/servo.cpp 

OBJS += \
./src/ReSyLib/periphery/actor/LED.o \
./src/ReSyLib/periphery/actor/servo.o 

CPP_DEPS += \
./src/ReSyLib/periphery/actor/LED.d \
./src/ReSyLib/periphery/actor/servo.d 


# Each subdirectory must supply rules for building sources it contributes
src/ReSyLib/periphery/actor/%.o: ../src/ReSyLib/periphery/actor/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	arm-linux-gnueabihf-g++ -std=c++1y -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


