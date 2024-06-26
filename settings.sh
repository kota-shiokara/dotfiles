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
gitignore="$HOME/.config/git/ignore"
if [ ! -e $gitignore ]; then
    cp $SCRIPT_DIR/ignore $HOME/.config/git
    echo "gitignore copied"
fi

# gitconfigの設定
gitconfig="$HOME/.gitconfig"
if [ ! -e $gitconfig ]; then
    cp $SCRIPT_DIR/.gitconfig $HOME
    echo "gitconfig copied"
fi

echo "Settings Completed"