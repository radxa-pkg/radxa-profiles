#!/bin/bash

LED_PATH="/sys/class/leds/$1"
NET_SYS="/sys/class/net"

sleep 2

if [[ -d "$NET_SYS/wan" ]]; then
    echo "wan" > "$LED_PATH/device_name"
elif [[ -d "$NET_SYS/enp1s0" ]]; then
    echo "enp1s0" > "$LED_PATH/device_name"
else
    echo "Error: no matching network interface found."
fi
