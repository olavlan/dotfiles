#!/bin/bash

# install preequisites for brew
sudo apt-get install build-essential procps curl file git

# install and setup brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"
test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.bashrc

# install packages
export HOMEBREW_BUNDLE_FILE=~/.personal/Brewfile 
brew bundle

# install oh my zsh without replacing .zshrc file
export RUNZSH="no"
export KEEP_ZSHRC="yes"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install firefox
# wget --content-disposition "https://download.mozilla.org/?product=firefox-latest&os=linux64&lang=en-US"
# compressed_file=$(find *firefox*)
# tar xf $compressed_file
# rm $compressed_file

# install foliate 
eget johnfactotum/foliate --asset=deb
sudo apt install ./$(find *foliate*)
