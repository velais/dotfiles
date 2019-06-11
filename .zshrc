# Zplugin - https://github.com/zdharma/zplugin
source ~/.zplugin/bin/zplugin.zsh
setopt promptsubst
zplugin ice lucid
zplugin snippet OMZ::lib/git.zsh
zplugin snippet OMZ::plugins/git/git.plugin.zsh
zplugin snippet OMZ::themes/robbyrussell.zsh-theme
zplugin ice wait"0" lucid
zplugin snippet OMZ::plugins/git/git.plugin.zsh
zplugin ice wait"0" atload"_zsh_autosuggest_start; ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=10'" lucid
zplugin light zsh-users/zsh-autosuggestions
zplugin ice wait"0" atinit"zpcompinit; zpcdreplay" lucid
zplugin light zdharma/fast-syntax-highlighting

# Zsh completions
zstyle ':completion:*' menu yes select

# Zsh history
bindkey '^R' history-incremental-pattern-search-backward
setopt extended_history
setopt inc_append_history
setopt share_history
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_expire_dups_first
setopt hist_save_no_dups
setopt hist_ignore_space
setopt hist_verify
HISTSIZE=10000
HISTFILE=~/.cache/.zsh_history
SAVEHIST=10000

# Zsh bells
unsetopt beep
unsetopt hist_beep
unsetopt list_beep

# Env
export LIBRARY_PATH="$LIBRARY_PATH:/usr/local/lib"
export GOPATH=~/go
export GOBIN=~/go/bin
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/home/alex/.linuxbrew/bin"
export PATH="$PATH:/usr/local/opt/go/libexec/bin"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$PATH:$GOBIN"
export TERM=xterm-256color
export EDITOR=vim
export BROWSER=google-chrome
export PYTHONSTARTUP="/home/alex/.lib/.pythonstartup.py"
. /usr/local/etc/profile.d/z.sh


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
