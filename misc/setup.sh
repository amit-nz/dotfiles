#!/bin/sh

# Git clone dotfiles repo to ~/.dotfiles

# Config
readonly RUBY_VERSION=2.4.0
readonly NODE_VERSION=node@6

# Config end

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/cask
brew tap homebrew/versions

# CLI apps
brew install tmux
brew install git
brew install syncthing
brew install imagemagick
brew install ansible
brew install thefuck
brew install mas

# GUI apps
brew cask install google-chrome
brew cask install firefox
brew cask install dropbox
brew cask install atom
brew cask install skype
brew cask install vlc
brew cask install mumble
brew cask install istat-menus
brew cask install flux
brew cask install transmission
brew cask install appdelete
brew cask install vmware-fusion
# Development
brew cask install vagrant
brew cask install virtualbox
brew cask install sourcetree
brew cask install sketch
brew cask install transmit
brew cask install sequel-pro
brew cask install imageoptim
# Manual install for security:
# brew cask install 1password

# dotfiles
brew tap thoughtbot/formulae
brew install rcm
rcup -v -x misc -x README.md

# vim
brew install vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# zsh
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
mv ~/.zshrc.pre-oh-my-zsh ~/.zshrc # Use .dotfiles zshrc

# Ruby
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
cd ~/.rbenv && src/configure && make -C src
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
git clone https://github.com/rbenv/rbenv-vars.git ~/.rbenv/plugins/rbenv-vars

# Mac
brew install openssl libyaml libffi
# Ubuntu
# apt-get install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev

rbenv install $RUBY_VERSION
rbenv global $RUBY_VERSION

gem install bundler
gem install rails

# Node
brew install $NODE_VERSION
npm install -g ember-cli
npm install -g bower

# Go
brew install go

# Database servers
brew install mongodb
brew install mysql
brew install postgresql

# Interactive configuration
# Atom editor
apm stars --install

# App Store
# mas search affinity
# mas search deliveries
# mas search wechat

# Services
brew services start syncthing
