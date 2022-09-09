# If you come from bash you might have to change your $PATH
# export PATH=$HOME/bin:/usr/local/bin:$PATH

#Path to your oh-my-zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# ZSH custom plugins 
plugins=(
    git
    golang
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#00afff"

# User configuration
export MANPATH="/usr/local/man:$MANPATH"

# language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='vim'

# Compilation flags
export ARCHFLAGS="-arch arm64"

# go PATH update
export GOPATH=${HOME}/project/go_ws
export os=$(go env GOOS)
export arch=$(go env GOARCH)
export PATH="${GOROOT}/bin:${PATH}"
