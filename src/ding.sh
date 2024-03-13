#!/bin/bash

monitor_cargo_build() {
    while true; do
        if pgrep -x "cargo" > /dev/null; then
            sleep 1
        else
            play -q ./ding.mp3
            break
        fi
    done
}

monitor_cargo_build &