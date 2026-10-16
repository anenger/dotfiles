#!/usr/bin/env bash
# Symlinks dotfiles into $HOME. Existing files are backed up with a .bak suffix.
set -euo pipefail
DIR="$(cd "$(dirname "$0")" && pwd)"

link() {
  local src="$DIR/$1" dst="$HOME/$2"
  mkdir -p "$(dirname "$dst")"
  if [ -e "$dst" ] && [ ! -L "$dst" ]; then mv "$dst" "$dst.bak"; fi
  ln -sfn "$src" "$dst"
  echo "linked $dst"
}

link zsh/.zshrc               .zshrc
link zsh/.zprofile            .zprofile
link zsh/.p10k.zsh            .p10k.zsh
link zsh/zpreztorc            .zpreztorc
link git/.gitconfig           .gitconfig
link aerospace/.aerospace.toml .aerospace.toml
link config/gh/config.yml     .config/gh/config.yml
link config/opencode/opencode.json .config/opencode/opencode.json
link config/opencode/cli.json .config/opencode/cli.json
link config/opencode/AGENTS.md .config/opencode/AGENTS.md
link claude/settings.json     .claude/settings.json
link codex/config.toml        .codex/config.toml

if [ ! -f "$HOME/.gitconfig.local" ]; then
  echo "note: create ~/.gitconfig.local with your [user] name/email"
fi
