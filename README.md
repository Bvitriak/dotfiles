# dotfiles

Cross-platform shell and Git configuration for macOS, Linux, WSL, Windows (Git Bash), and GitHub Codespaces.

## Structure

- `.gitignore` — repository-level ignores for editor and OS artifacts
- `LICENSE` — MIT license
- `install.sh` — OS-aware, idempotent symlink and shell bootstrap script
- `git/.gitconfig` — global Git settings, `zdiff3` merge, aliases, and `~/.gitconfig.local` override support
- `git/.gitignore_global` — global ignore rules across local repositories
- `shell/.aliases` — cross-platform aliases with OS detection and binary checks
- `shell/.zshrc` — Zsh configuration, prompt, and dynamic editor detection
- `shell/.bashrc` — Bash configuration and dynamic editor detection

## Usage

Automatically installed in GitHub Codespaces when enabled in account settings, or run manually on any Unix-like environment:

```bash
git clone [https://github.com/Bvitriak/dotfiles.git](https://github.com/Bvitriak/dotfiles.git) ~/.dotfiles
chmod +x ~/.dotfiles/install.sh
~/.dotfiles/install.sh
```
