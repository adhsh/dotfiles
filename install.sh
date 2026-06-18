#!/bin/bash
DOTFILES="$(cd "$(dirname "$0")" && pwd)"

mkdir -p ~/.config

ln -sf "$DOTFILES/nvim" ~/.config/nvim
ln -sf "$DOTFILES/tmux.conf" ~/.tmux.conf

echo "Dotfiles linked."
