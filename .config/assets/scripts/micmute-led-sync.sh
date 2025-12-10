#!/bin/bash

LED="/sys/class/leds/platform::micmute/brightness"

while true; do
    STATE=$(wpctl get-volume @DEFAULT_AUDIO_SOURCE@ | grep -o "MUTED")

    if [[ "$STATE" == "MUTED" ]]; then
        echo 1 > "$LED"
    else
        echo 0 > "$LED"
    fi

    sleep 0.2
done
