#!/bin/sh

echo "Install Start"

# bashrcの設定
bashrc="~/.bashrc"
if [ ! -e $bashrc ]; then
    ln -s ~/dotfiles/.bashrc ~
    echo "bashrc copied"
fi

# gitignoreのグローバル設定
gitignore="~/.gitignore_global"
if [ ! -e $gitignore ]; then
    ln -s ~/dotfiles/.gitignore_global ~
    echo "gitignore_global copied"
    git config --global core.excludesfile ~/.gitignore_global
    echo "Setting gitignore_global"
fi

git config --global init.defaultBranch main

echo "Install Completed"
