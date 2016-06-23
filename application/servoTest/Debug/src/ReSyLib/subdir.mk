################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/ReSyLib/GPIO.cpp \
../src/ReSyLib/GPIO_Analog.cpp \
../src/ReSyLib/GPIO_Digital.cpp \
../src/ReSyLib/GPIO_PWM.cpp \
../src/ReSyLib/HWManager.cpp \
../src/ReSyLib/periphery.cpp 

OBJS += \
./src/ReSyLib/GPIO.o \
./src/ReSyLib/GPIO_Analog.o \
./src/ReSyLib/GPIO_Digital.o \
./src/ReSyLib/GPIO_PWM.o \
./src/ReSyLib/HWManager.o \
./src/ReSyLib/periphery.o 

CPP_DEPS += \
./src/ReSyLib/GPIO.d \
./src/ReSyLib/GPIO_Analog.d \
./src/ReSyLib/GPIO_Digital.d \
./src/ReSyLib/GPIO_PWM.d \
./src/ReSyLib/HWManager.d \
./src/ReSyLib/periphery.d 


# Each subdirectory must supply rules for building sources it contributes
src/ReSyLib/%.o: ../src/ReSyLib/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	arm-linux-gnueabihf-g++ -std=c++1y -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


