#!/bin/bash

DOTFILES="$(cd "$(dirname "$0")/.." && pwd)"

truncate -s 0 "$DOTFILES/_logs/_automation.log"
truncate -s 0 "$DOTFILES/_logs/apt/apt_update.log"
truncate -s 0 "$DOTFILES/_logs/omz/omz_update.log"

echo "All logs cleared."
