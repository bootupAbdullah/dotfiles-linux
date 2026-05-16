#!/bin/bash

LOG="$(dirname "$0")/../../_logs/_automation.log"
TIMESTAMP=$(date "+%Y-%m-%d %H:%M")

if ufw status | grep -q "Status: active"; then
    echo "[$TIMESTAMP] ufw status — OK" >> "$LOG"
else
    echo "[$TIMESTAMP] ufw status — FAIL" >> "$LOG"
fi
