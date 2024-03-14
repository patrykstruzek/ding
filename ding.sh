#!/bin/bash

monitor_cargo_build() {
    while true; do
        if pgrep -f "cargo" >/dev/null; then
            wait $(pgrep -f "cargo")
            play -q ./ding.wav
        fi
    done
}

monitor_cargo_build > /dev/null 2>&1 &
