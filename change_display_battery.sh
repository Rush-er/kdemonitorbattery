#!/bin/bash

while true; do
    status=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep "state:" | cut -d: -f 2)
    if [[ "$status" == *"discharging"* ]]; then
        kscreen-doctor output.2.mode.10    # Laptop on battery
    else
        kscreen-doctor output.2.mode.14    # Laptop on power
    fi
    sleep 10
done
