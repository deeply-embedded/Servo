#!/bin/bash

slots=/sys/devices/bone_capemgr.9/slots

echo "am33xx_pwm" > $slots
echo "bone_pwm_P8_13" > $slots
echo "bone_pwm_P8_19" > $slots
echo "bone_pwm_P8_34" > $slots
echo "bone_pwm_P8_36" > $slots
echo "bone_pwm_P8_45" > $slots
echo "bone_pwm_P8_46" > $slots
echo "bone_pwm_P9_14" > $slots
echo "bone_pwm_P9_16" > $slots
echo "bone_pwm_P9_21" > $slots
echo "bone_pwm_P9_22" > $slots
echo "bone_pwm_P9_28" > $slots
echo "bone_pwm_P9_29" > $slots
echo "bone_pwm_P9_31" > $slots
echo "bone_pwm_P9_42" > $slots

