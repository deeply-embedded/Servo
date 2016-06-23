#!/bin/bash

# DON'T USE

echo am33xx_pwm > /sys/devices/bone_capemgr.9/slots

# P8_13
echo "1" > /sys/devices/ocp.3/pwm_test_P8_13.*/run
echo "0" > /sys/devices/ocp.3/pwm_test_P8_13.*/polarity
echo "20000000" > /sys/devices/ocp.3/pwm_test_P8_13.*/period
echo "2000000" > /sys/devices/ocp.3/pwm_test_P8_13.*/duty
echo "0" > /sys/devices/ocp.3/pwm_test_P8_13.*/duty
echo "1500000" > /sys/devices/ocp.3/pwm_test_P8_13.*/duty

# P9_14
echo "1" > /sys/devices/ocp.3/pwm_test_P9_14.*/run
echo "0" > /sys/devices/ocp.3/pwm_test_P9_14.*/polarity
echo "20000000" > /sys/devices/ocp.3/pwm_test_P9_14.*/period
echo "2000000" > /sys/devices/ocp.3/pwm_test_P9_14.*/duty
echo "0" > /sys/devices/ocp.3/pwm_test_P9_14.*/duty
echo "1500000" > /sys/devices/ocp.3/pwm_test_P9_14.*/duty

# P9_21
echo "1" > /sys/devices/ocp.3/pwm_test_P9_21.*/run
echo "0" > /sys/devices/ocp.3/pwm_test_P9_21.*/polarity
echo "20000000" > /sys/devices/ocp.3/pwm_test_P9_21.*/period
echo "2000000" > /sys/devices/ocp.3/pwm_test_P9_21.*/duty
echo "0" > /sys/devices/ocp.3/pwm_test_P9_21.*/duty
echo "1500000" > /sys/devices/ocp.3/pwm_test_P9_21.*/duty




