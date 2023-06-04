# Dotfiles

Based on: https://www.youtube.com/watch?v=DzNmUNvnB04

Apps to install @ first:
`zsh neovim tmux fzf`

External scripts:
* `/lemnos/theme.sh`

## zsh
* Install `zsh && oh-my-zsh`.
* `source ~/.zshrc`.

## neovim
Everything should install automatically after running `nvim` or `nv`. Additionaly you can switch between Neovim instances by typing `nvs`.

## tmux
Install plugins by hitting [Ctrl+B Shift+I] in fresh `tmux` instance.

There is a command to refresh the config:
```sh
tmux source ~/.config/tmux/tmux.conf
```

### Mappings:
* `<prefix> = Control+Space` (overrides default Control+b<C-b>)
* `Shift+Alt+H` => Previous Tab
* `Shift+Alt+L` => Next Tab
* `Control+H/J/K/L` => Move Left/Down/Up/Right between windows when splitted.

