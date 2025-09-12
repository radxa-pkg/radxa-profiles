#!/bin/bash

LED_PATH="/sys/class/leds/wan-led"

if [ -d /sys/class/net/enp1s0 ]; then
    echo "enp1s0" > "$LED_PATH/device_name"
else
    echo "wan" > "$LED_PATH/device_name"
fi
