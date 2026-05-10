#!/bin/bash

DOTFILES="$(cd "$(dirname "$0")/../.." && pwd)"
LOGFILE="$DOTFILES/_logs/omz/omz_update.log"
AUTOLOG="$DOTFILES/_logs/_automation.log"
mkdir -p "$DOTFILES/_logs/omz"
DATE=$(date "+%Y-%m-%d %H:%M")

echo "[$DATE] Starting oh-my-zsh update..." >> "$LOGFILE"

RESULT=$(zsh -i -c 'omz update' 2>&1)

if echo "$RESULT" | grep -q "already at the latest version"; then
    echo "[$DATE] Already up to date." >> "$LOGFILE"
else
    echo "[$DATE] Updated." >> "$LOGFILE"
fi

echo "[$DATE] Done." >> "$LOGFILE"
echo "---" >> "$LOGFILE"

# keep last 10 log entries
ENTRIES=$(grep -c "^\[" "$LOGFILE")
if [ "$ENTRIES" -gt 10 ]; then
    tail -n +4 "$LOGFILE" > "$LOGFILE.tmp" && mv "$LOGFILE.tmp" "$LOGFILE"
fi

echo "[$DATE] omz update — OK" >> "$AUTOLOG"
