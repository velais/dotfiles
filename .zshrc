# Zplugin - https://github.com/zdharma/zplugin
source ~/.zplugin/bin/zplugin.zsh
autoload -U colors && colors
setopt promptsubst
zplugin ice lucid
zplugin snippet OMZ::lib/git.zsh
zplugin snippet OMZ::plugins/git/git.plugin.zsh
zplugin snippet OMZ::themes/robbyrussell.zsh-theme
zplugin ice wait"0" lucid
zplugin snippet OMZ::plugins/git/git.plugin.zsh
zplugin ice wait"0" blockf lucid
zplugin light zsh-users/zsh-completions
zplugin ice wait"0" atload"_zsh_autosuggest_start; ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=10'" lucid
zplugin light zsh-users/zsh-autosuggestions
zplugin ice wait"0" atinit"zpcompinit; zpcdreplay" lucid
zplugin light zdharma/fast-syntax-highlighting

# Zsh completions
zstyle ':completion:*' menu yes select

# Zsh history
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

# Zsh vi-mode
bindkey -v
bindkey '^R' history-incremental-search-backward
bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^w' backward-kill-word
bindkey -M viins 'jj' vi-cmd-mode

precmd() { RPROMPT="" }
function zle-line-init zle-keymap-select {
   VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
   RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
   zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

export KEYTIMEOUT=20

# Zsh bells
unsetopt beep
unsetopt hist_beep
unsetopt list_beep

# Env
export LIBRARY_PATH="$LIBRARY_PATH:/usr/local/lib"
export GOPATH=~/go
export GOBIN=~/go/bin
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="$PATH:/usr/local/opt/go/libexec/bin"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$PATH:$GOBIN"
export PATH="$PATH:$HOME/lib/flutter/bin"
export TERM=screen-256color
export EDITOR=vim
export BROWSER=google-chrome
. /usr/local/etc/profile.d/z.sh


# Alias
alias sz='source ~/.zshrc'
alias ez='vim ~/.zshrc'

# NeoVim
if type nvim > /dev/null 2>&1; then
      alias vim='nvim'
fi

# Source local configuration
if [ -f '.zshrc.local' ]; then
    alias elz='vim ~/.zshrc.local'
    source .zshrc.local
fi

# Start tmux
export TMUX_PRIMARY=main
if command -v tmux>/dev/null; then
    [ -z $TMUX ] &&  \
    [ $(tmux display -t $TMUX_PRIMARY -p '#{?session_attached,0,1}' || echo 1) -eq 1 ] && \
    tmux new-session -A -s $TMUX_PRIMARY
fi

