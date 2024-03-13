#!/bin/bash

DAEMON_SCRIPT="../ding.sh"

if [ ! -f "$DAEMON_SCRIPT" ]; then
    echo "Error: Daemon script '$DAEMON_SCRIPT' not found."
    exit 1
fi

sudo update-rc.d -f "$(basename $DAEMON_SCRIPT)" remove

sudo rm -f "/etc/init.d/$(basename $DAEMON_SCRIPT)"

echo "DING!"