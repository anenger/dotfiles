# dotfiles

Personal macOS config: zsh (prezto + powerlevel10k), git, AeroSpace, gh, opencode, Claude Code, Codex.

## Install

```sh
git clone https://github.com/anenger/dotfiles ~/dotfiles
~/dotfiles/install.sh
```

Requires [prezto](https://github.com/sorin-ionescu/prezto) cloned to `~/.zprezto`.

## Local / secret config (not tracked)

- `~/.gitconfig.local`: git identity
  ```ini
  [user]
      name = Your Name
      email = you@example.com
  ```
- `CONTEXT7_API_KEY` env var: used by `config/opencode/opencode.json`
