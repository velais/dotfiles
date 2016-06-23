# load zgen
source "${HOME}/.bin/zgen/zgen.zsh"

# check if there's no init script
if ! zgen saved; then
    echo "Creating a zgen save"

    zgen oh-my-zsh

    # plugins
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/sudo
    zgen oh-my-zsh plugins/python
    zgen oh-my-zsh plugins/tmux
    zgen oh-my-zsh plugins/z
    zgen oh-my-zsh plugins/docker
    zgen oh-my-zsh plugins/command-not-found
    zgen oh-my-zsh plugins/gradle
    zgen load zsh-users/zsh-syntax-highlighting

    # bulk load
    zgen loadall <<EOPLUGINS
        zsh-users/zsh-history-substring-search
EOPLUGINS
    # ^ can't indent this EOPLUGINS

    # completions
    zgen load zsh-users/zsh-completions src

    # theme
    zgen oh-my-zsh themes/robbyrussell

    # save all to init script
    zgen save
fi

# Zsh theme
ZSH_THEME="robbyrussell"

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/home/alex/.linuxbrew/bin"

# Exports
export TERM=xterm-256color
export EDITOR=vim
export BROWSER=google-chrome
export PYTHONSTARTUP="/home/alex/.lib/.pythonstartup.py"

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
