#!/bin/bash

cp *.dtbo /lib/firmware

for f in *.dtbo
do
    cp $f /lib/firmware
    echo ${f: : -10} > /sys/devices/bone_capemgr.9/slots
done



