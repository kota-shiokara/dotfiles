#!/bin/sh
echo "Install Start"

# Homebrewのインストールをしてから
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update

brew install git
# brew install docker : caskでDocker Desktopを入れるときには、CLIを入れなくて良い

# anyenv
brew install anyenv
yes | anyenv install --init
anyenv install nodenv
eval "$(anyenv init -)"
exec $SHELL -l

nodenv install 20.5.1
nodenv global 20.5.1

# sdk
curl -s "https://get.sdkman.io" | zsh
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk install java 20.0.2-zulu
sdk default java 20.0.2-zulu

brew install --cask docker

# JetBrains
brew install --cask android-studio
brew install --cask intellij-idea

# VSCode
brew install --cask visual-studio-code

# Tools
brew install --cask discord
brew install --cask slack
brew install --cask google-chrome
brew install --cask google-drive
brew install --cask obsidian
brew install --cask postman
brew install --cask figma
brew install --cask fig
brew install --cask zoom
brew install --cask zotero

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git

echo "Install Completed"
