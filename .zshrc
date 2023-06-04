export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="lambda"
plugins=(git npm node vi-mode)

source $ZSH/oh-my-zsh.sh

alias nv="nvim"

function nvs() {
    items=("default")
	config=$(printf "%s\n" "${items[@]}" | fzf --prompt="Neovim Config: " --height=~50% --layout=reverse --border --exit-0)
	if [[ -z $config ]]; then
		echo "Nothing selected!"
		return 0
    elif [[ $config == "default" ]]; then
		config=""
    fi
	NVIM_APPNAME=$config nvim $@
}

if command -v theme.sh > /dev/null; then
	[ -e ~/.theme_history ] && theme.sh "$(theme.sh -l|tail -n1)"

	# Optional

	# Bind C-o to the last theme.
	last_theme() {
		theme.sh "$(theme.sh -l|tail -n2|head -n1)"
	}

	zle -N last_theme
	bindkey '^O' last_theme

	alias th='theme.sh -i'

	# Interactively load a light theme
	alias thl='theme.sh --light -i'

	# Interactively load a dark theme
	alias thd='theme.sh --dark -i'
fi
