#!/bin/bash
# Symlinks each config in this repo to where its program expects it.
# Any existing real file/dir at a target is moved to <target>.bak first.
set -euo pipefail

DOTFILES="$(cd "$(dirname "$0")" && pwd)"

link() {
  local src="$1" dest="$2"
  mkdir -p "$(dirname "$dest")"
  if [ -e "$dest" ] && [ ! -L "$dest" ]; then
    echo "Backing up $dest -> $dest.bak"
    mv "$dest" "$dest.bak"
  fi
  ln -sfn "$src" "$dest"
  echo "Linked $dest -> $src"
}

# ---- vim ----
link "$DOTFILES/vim/vimrc"     ~/.vimrc

# ---- neovim ----
link "$DOTFILES/nvim"          ~/.config/nvim

# ---- tmux ----
link "$DOTFILES/tmux/tmux.conf" ~/.tmux.conf

# ---- kitty ----
link "$DOTFILES/kitty"         ~/.config/kitty

echo "Dotfiles linked."
