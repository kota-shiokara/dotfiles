#!/bin/sh

echo "Install Start"

# Homebrewのインストール
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update

brew install git
brew install docker

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
brew install --cask obsidian
brew install --cask postman
brew install --cask figma

echo "Install Completed"