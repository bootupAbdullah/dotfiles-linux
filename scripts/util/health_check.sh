#!/bin/bash

LOG="$(dirname "$0")/../../_logs/_automation.log"
TIMESTAMP=$(date "+%Y-%m-%d %H:%M")

RESPONSE=$(curl -s https://entrvm.xyz/health)

if echo "$RESPONSE" | grep -q '"status":"ok"'; then
    echo "[$TIMESTAMP] entrvm.xyz/health — OK" >> "$LOG"
else
    echo "[$TIMESTAMP] entrvm.xyz/health — FAIL" >> "$LOG"
fi
