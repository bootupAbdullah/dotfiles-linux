#!/bin/bash

DOTFILES="$(cd "$(dirname "$0")/../.." && pwd)"
LOGFILE="$DOTFILES/_logs/apt/apt_update.log"
AUTOLOG="$DOTFILES/_logs/_automation.log"
mkdir -p "$DOTFILES/_logs/apt"
DATE=$(date "+%Y-%m-%d %H:%M")

echo "[$DATE] Starting apt update..." >> "$LOGFILE"

UPGRADES=$(apt list --upgradable 2>/dev/null | grep -v "Listing...")

if [ -z "$UPGRADES" ]; then
    echo "[$DATE] Nothing to upgrade." >> "$LOGFILE"
else
    echo "[$DATE] Upgraded:" >> "$LOGFILE"
    echo "$UPGRADES" | while read line; do
        echo "  - $line" >> "$LOGFILE"
    done
    apt update -y > /dev/null 2>&1
    apt upgrade -y > /dev/null 2>&1
fi

echo "[$DATE] Done." >> "$LOGFILE"
echo "---" >> "$LOGFILE"

# keep last 10 log entries
ENTRIES=$(grep -c "^\[" "$LOGFILE")
if [ "$ENTRIES" -gt 10 ]; then
    tail -n +4 "$LOGFILE" > "$LOGFILE.tmp" && mv "$LOGFILE.tmp" "$LOGFILE"
fi

echo "[$DATE] apt update — OK" >> "$AUTOLOG"
