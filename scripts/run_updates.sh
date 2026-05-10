#!/bin/bash

DOTFILES="$(cd "$(dirname "$0")/.." && pwd)"

bash "$DOTFILES/scripts/apt/apt_update.sh"
bash "$DOTFILES/scripts/omz/omz_update.sh"
