#!/bin/bash

# DON'T USE!!!

# P8_13
echo am33xx_pwm > /sys/devices/bone_capemgr.9/slots
echo bone_pwm_P8_13 > /sys/devices/bone_capemgr.9/slots

# P9_14
echo am33xx_pwm > /sys/devices/bone_capemgr.9/slots
echo bone_pwm_P9_14 > /sys/devices/bone_capemgr.9/slots

# P9_21
echo am33xx_pwm > /sys/devices/bone_capemgr.9/slots
echo bone_pwm_P9_21 > /sys/devices/bone_capemgr.9/slots

cp *.dtbo /lib/firmware

for f in *.dtbo
do
    cp $f /lib/firmware
    echo am33xx_pwm > /sys/devices/bone_capemgr.9/slots
    echo ${f: : -10} > /sys/devices/bone_capemgr.9/slots
done

