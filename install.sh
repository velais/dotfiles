#!/bin/bash

# Symlink configs to home folder
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.vimrc ~/.vimrc
ln -s ~/.dotfiles/.vimrc.plug ~/.vimrc.plug
ln -s ~/.dotfiles/.ideavimrc ~/.ideavimrc
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf

# Install zplugin
git clone https://github.com/zdharma/zplugin.git "${HOME}/.zplugin/bin"
