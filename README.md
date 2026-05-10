# dotfiles-linux

Shell config, aliases, and automation scripts for a DigitalOcean Ubuntu VM.

---

## Contents

| Path | Description |
|------|-------------|
| `shell/.zshrc` | zsh config — PATH, oh-my-zsh, SSH agent autostart |
| `shell/aliases.zsh` | All aliases, sourced by `.zshrc` |
| `shell/references/shortcuts.md` | Alias reference with descriptions |
| `shell/references/navigation.md` | Shell navigation reference |
| `scripts/apt/apt_update.sh` | apt update and upgrade, logs results |
| `scripts/omz/omz_update.sh` | oh-my-zsh update, logs results |
| `scripts/run_updates.sh` | Master script — runs both updates in sequence |
| `scripts/clearlogs.sh` | Clears log files |

---

## Setup

Clone the repo:

```bash
git clone git@github.com:bootupAbdullah/dotfiles-linux.git ~/dotfiles-linux
```

Symlink zshrc:

```bash
ln -s ~/dotfiles-linux/shell/.zshrc ~/.zshrc
```

Add the cron job:

```bash
crontab -e
```

Add this line:

```
0 3 * * * /root/dotfiles-linux/scripts/run_updates.sh
```

---

## Logs

Logs are written to `_logs/` and gitignored. Use the `log` alias to view the automation summary.
