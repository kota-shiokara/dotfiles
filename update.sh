#!/bin/sh
# シンボリックリンクじゃないファイルのため

echo "Update Start"

SCRIPT_DIR=$(cd $(dirname $0);pwd)

# gitignoreのグローバル設定
gitignore="$HOME/.config/git/ignore"
cp $SCRIPT_DIR/ignore $HOME/.config/git
echo "gitignore updated"

# gitconfigの設定
gitconfig="$HOME/.gitconfig"
cp $SCRIPT_DIR/.gitconfig $HOME
echo "gitconfig updated"

echo "Update Completed"