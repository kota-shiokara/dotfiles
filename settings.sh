#!/bin/sh

echo "Settings Start"

SCRIPT_DIR=$(cd $(dirname $0);pwd)

# bashの設定ファイル
bashrc="$HOME/.bashrc"
if [ ! -e $bashrc ]; then
    ln -s $SCRIPT_DIR/.bashrc $HOME
    echo "bashrc copied"
fi

bashprofile="$HOME/.bash_profile"
if [ ! -e $bashprofile ]; then
    ln -s $SCRIPT_DIR/.bash_profile $HOME
    echo "bash_profile copied"
fi

# zshの設定ファイル
zshrc="$HOME/.zshrc"
if [ ! -e $zshrc ]; then
    ln -s $SCRIPT_DIR/.zshrc $HOME
    echo "zshrc copied"
fi

zprofile="$HOME/.zprofile"
if [ ! -e $zprofile ]; then
    ln -s $SCRIPT_DIR/.zprofile $HOME
    echo "zprofile copied"
fi

# gitignoreのグローバル設定
gitignore="$HOME/.gitignore_global"
if [ ! -e $gitignore ]; then
    ln -s $SCRIPT_DIR/.gitignore_global $HOME
    echo "gitignore_global copied"
    git config --global core.excludesfile $HOME/.gitignore_global
    echo "Setting gitignore_global"
fi

git config --global init.defaultBranch main

echo "Settings Completed"