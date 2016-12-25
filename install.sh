# File: install.sh
# Author: Rohan Jadvani
#
# Brief: Installation script for a dev setup. I actually haven't tried this
#   out, but it seems like a useful script to have. I recently purged my OSX
#   installation, so in case I do that again, I'll have this script lying
#   around.

# Install Xcode developer tools.
xcode-select --install

# Homebrew installation.
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
brew update

# I dislike Mac default terminal.
brew cask install iterm2

# Git is useful.
brew install git

# Install GNU core utilities.
brew install coreutils

# vim > emacs
brew install vim

# Install both versions of Python.
brew install python
brew install python3

# Utilities that I use.
brew install heroku-toolbelt
brew install htop
brew install macvim
brew install tmux
brew install wget

# Make sure the utilities are linked properly.
brew linkapps

# Because CMU.
brew install smlnj

