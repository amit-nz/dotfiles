#!/bin/sh

# Git clone dotfiles repo to ~/.dotfiles

# Config
readonly RUBY_VERSION=2.5.3
readonly NODE_VERSION=node@8

# Config end

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# CLI apps
brew install ansible
brew install axel
brew install fzf
brew install git
brew install imagemagick
brew install iperf3
brew install mas
brew install mosh
brew install syncthing
brew install telnet
brew install thefuck
brew install tmux
brew install wget

# GUI apps
# Manual install for security:
# brew cask install 1password
# brew cask install dropbox
brew cask install appdelete
brew cask install atom
brew cask install discord
brew cask install firefox
brew cask install flux
brew cask install google-chrome
brew cask install istat-menus
brew cask install skype
brew cask install spotify
brew cask install steam
brew cask install transmission
brew cask install vlc
brew cask install vmware-fusion

# Development
brew cask install imageoptim
brew cask install sequel-pro
brew cask install sketch
brew cask install sourcetree
brew cask install transmit
brew cask install vagrant
brew cask install virtualbox

# dotfiles
brew tap thoughtbot/formulae
brew install rcm
rcup -v -x misc -x README.md

# fish
brew install fish
curl -L https://get.oh-my.fish | fish # oh-my-fish

# vim
brew install vim
vim +'PlugInstall --sync' +qa

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
npm install -g bower
# npm install -g ember-cli

# Go
brew install go

# Database servers
brew install mariadb
brew install mongodb
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
