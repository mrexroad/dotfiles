#!/bin/bash

# install homebrew if not present
[[ ! -s /usr/local/bin/brew ]] && ruby <(curl -fsSk https://raw.github.com/mxcl/homebrew/go)

export PATH=/usr/local/bin:$PATH

# Make sure we’re using the latest Homebrew
brew update
# Upgrade any already-installed formulae
brew upgrade
# Verify homebrew installation
brew doctor

# install interesting things
brew install ack 
brew install ctags 
brew install git 
brew install hub 
brew install macvim
brew install autoconf
brew install automake
brew install fuse4x
brew install wget 
brew install grc
brew install redis
brew install macvim
brew install pkg-config
brew install readline
brew install sqlite
brew install node
brew install phantomjs
brew install rename
brew install tree
brew install python --framework --universal
easy_install pip
pip install virutalenv
pip install virtualenvwrapper

export PATH=/usr/local/share/python:$PATH
source /usr/local/share/python/virtualenvwrapper.sh

# install npm
curl https://npmjs.org/install.sh | sh

# Remove outdated versions from the cellar
brew cleanup

# install rvm / bundlr 
curl -L https://get.rvm.io | bash -s stable --ruby
rvm get head
rvm install 1.9.3-head
gem install bundlr
