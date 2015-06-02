# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Zsh theme
ZSH_THEME="robbyrussell"

# Plugins
plugins=(git brew docker python zsh-syntax-highlighting lein web-search scala tmux z)

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"

# Exports
export TERM=xterm-256color
export EDITOR=vim

# Alias
alias sz='source ~/.zshrc'
alias ez='vim ~/.zshrc'

# Source local configuration
if [ -f '.zshrc.local' ]; then
    alias elz='vim ~/.zshrc.local'
    source .zshrc.local
fi

# Start tmux
if command -v tmux>/dev/null; then
      [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && tmux new-session
fi
