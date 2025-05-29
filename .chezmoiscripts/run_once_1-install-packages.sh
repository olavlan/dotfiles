#!/bin/bash

# install preequisites for brew
sudo apt-get install build-essential procps curl file git

# install and setup brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"
test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
brew install gcc

# install packages
brew bundle

# set up oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# set up terminal tools
echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.zshrc
hstr --show-zsh-configuration >> ~/.zshrc
source ~/zshrc
