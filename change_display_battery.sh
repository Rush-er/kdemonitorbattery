#!/bin/bash
while true
do
    if on_ac_power; then
        kscreen-doctor output.83.mode.110               ## Laptop on power
    else
        kscreen-doctor output.83.mode.96          ## Laptop on battery
    fi
    sleep 10                       ## wait 10 sec before repeating
done
