# Shell
alias x="exit"
alias src="exec zsh"
alias shortcuts="cat ~/dotfiles-linux/shell/references/shortcuts.md"
alias aliases="nano  ~/dotfiles-linux/shell/aliases.zsh"

# Navigation
alias ll="ls -la"
alias dotfiles="cd ~/dotfiles-linux"

# Git
alias gs="git status"
alias gp="git push origin main"
alias gl="git log --oneline"
alias gcm="git commit -m"
alias ga="git add -A"

# System
alias ports="ss -tulnp"
alias myip="curl -s ifconfig.me"
alias update="bash ~/dotfiles-linux/scripts/util/run_updates.sh"

# Logs
alias logs="cat ~/dotfiles-linux/_logs/_automation.log"
alias clearlog="truncate -s 0 ~/dotfiles-linux/_logs/_automation.log"
alias clearlogs="bash ~/dotfiles-linux/scripts/util/clearlogs.sh"
