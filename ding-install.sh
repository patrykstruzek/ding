#!/bin/bash

DAEMON_SCRIPT="../ding.sh"

if [ ! -f "$DAEMON_SCRIPT" ]; then
    echo "Error: Daemon script '$DAEMON_SCRIPT' not found."
    exit 1
fi

sudo cp "$DAEMON_SCRIPT" /etc/init.d/

sudo chmod +x "/etc/init.d/$(basename $DAEMON_SCRIPT)"

sudo update-rc.d "$(basename $DAEMON_SCRIPT)" defaults

echo "DING!"