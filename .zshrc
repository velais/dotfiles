# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Zsh theme
ZSH_THEME="robbyrussell"

# Plugins
plugins=(git brew docker python zsh-syntax-highlighting lein web-search scala tmux)

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"

# Colours
export TERM=xterm-256color
# Python path
#export PYTHONSTARTUP=~/.pythonrc

# Docker
export DOCKER_HOST=tcp://localhost:4243

#Android sdk
export ANDROID_SDK_HOME=/usr/local/Cellar/android-sdk/22.6.2

# Alias
alias sz='source ~/.zshrc'
alias ez='vim ~/.zshrc'

# Start tmux
if command -v tmux>/dev/null; then
      [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && tmux new-session
fi
