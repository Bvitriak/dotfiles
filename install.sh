#!/usr/bin/env bash
set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

detect_os() {
  case "$(uname -s)" in
    Darwin*)               echo "macos" ;;
    Linux*)
      if grep -qi microsoft /proc/version 2>/dev/null; then
        echo "wsl"
      else
        echo "linux"
      fi
      ;;
    CYGWIN*|MINGW*|MSYS*)  echo "windows" ;;
    *)                     echo "unknown" ;;
  esac
}

OS="$(detect_os)"
echo "Installing dotfiles from $DOTFILES_DIR (detected OS: $OS)..."

link_file() {
  local src="$1"
  local dest="$2"
  mkdir -p "$(dirname "$dest")"
  ln -sfn "$src" "$dest"
  echo "Linked $dest -> $src"
}

link_file "$DOTFILES_DIR/git/.gitconfig" "$HOME/.gitconfig"
link_file "$DOTFILES_DIR/git/.gitignore_global" "$HOME/.gitignore_global"
link_file "$DOTFILES_DIR/shell/.aliases" "$HOME/.aliases"
link_file "$DOTFILES_DIR/shell/.zshrc" "$HOME/.zshrc"

if [ -f "$HOME/.bashrc" ]; then
  if ! grep -q 'source "$HOME/.aliases"' "$HOME/.bashrc"; then
    printf '\n# Load custom dotfiles aliases\n[ -f "$HOME/.aliases" ] && source "$HOME/.aliases"\n' >> "$HOME/.bashrc"
    echo "Appended .aliases source to $HOME/.bashrc"
  fi
else
  link_file "$DOTFILES_DIR/shell/.bashrc" "$HOME/.bashrc"
fi

echo "Dotfiles installation complete for $OS."
