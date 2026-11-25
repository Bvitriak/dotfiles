# dotfiles

Personal shell and Git configuration for macOS and GitHub Codespaces.

## Structure

- `.gitignore` — repository-level ignores for editor and OS artifacts
- `LICENSE` — MIT license
- `install.sh` — idempotent symlink and shell bootstrap script
- `git/.gitconfig` — global Git configuration, diff/merge settings, and aliases
- `git/.gitignore_global` — global ignore rules across local repositories
- `shell/.aliases` — shared command aliases for Zsh and Bash
- `shell/.zshrc` — Zsh configuration and prompt setup
- `shell/.bashrc` — Bash fallback configuration

## Usage

Run automatically in GitHub Codespaces when enabled in account settings, or run manually:

```bash
git clone [https://github.com/Bvitriak/dotfiles.git](https://github.com/Bvitriak/dotfiles.git) ~/.dotfiles
chmod +x ~/.dotfiles/install.sh
~/.dotfiles/install.sh
```
