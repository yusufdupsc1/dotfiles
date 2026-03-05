#!/usr/bin/env bash
set -euo pipefail

mkdir -p "$HOME/.config" "$HOME/.cache"

ln -sf "$PWD/.zshrc" "$HOME/.zshrc"
ln -sf "$PWD/.config/zsh" "$HOME/.config/zsh"
ln -sf "$PWD/.config/starship.toml" "$HOME/.config/starship.toml"

echo "Installed dotfiles. Run: exec zsh"
