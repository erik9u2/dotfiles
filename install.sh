#!/bin/bash

# Ensure .ssh exists
if [ ! -d "~/.ssh" ]; then
	mkdir ~/.ssh
fi

# Update permissions
chmod 664 .bash_aliases
chmod 664 .bashrc
chmod 664 .profile
chmod 664 .tmux.conf
chmod 664 .vimrc

# Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Link files
ln -sf ~/dotfiles/.bash_aliases ~/.bash_aliases
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.profile ~/.profile
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/.vimrc ~/.vimrc

# Setup vim
vim -u install_vim_plugins.vim
