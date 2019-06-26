#!/bin/sh

# Git clone dotfiles repo to ~/.dotfiles

# Config
readonly RUBY_VERSION=2.5.3
readonly NODE_VERSION=node@10

# Config end

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# CLI apps
brew install ansible
brew install axel
brew install cmatrix
brew install fd
brew install fzf
brew install git
brew install imagemagick
brew install iperf3
brew install mas
brew install mosh
brew install mtr
brew install syncthing
brew install telnet
brew install thefuck
brew install tmux
brew install wget

# GUI apps
# Manual install for security:
# brew cask install 1password
brew cask install appdelete
brew cask install atom
brew cask install discord
brew cask install firefox
brew cask install nextcloud
brew cask install istat-menus
brew cask install iterm2
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

# vagrant
brew cask install vagrant
brew cask install vagrant-vmware-utility
vagrant plugin install vagrant-vmware-desktop

# zsh
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
rm ~/.zshrc

# dotfiles
brew tap thoughtbot/formulae
brew install rcm
rcup -v -x misc -x README.md

# vim
brew install vim
vim +'PlugInstall --sync' +qa

# Ruby
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
cd ~/.rbenv && src/configure && make -C src
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
git clone https://github.com/rbenv/rbenv-vars.git ~/.rbenv/plugins/rbenv-vars
brew install openssl libyaml libffi
rbenv install $RUBY_VERSION
rbenv global $RUBY_VERSION
gem install bundler
gem install rails

# Node
brew install $NODE_VERSION
npm install -g nodemon

# Go
# brew install go

# Database servers
brew install mysql@5.7
brew install mongodb
brew install redis
# brew install postgresql

# Interactive configuration
# Atom editor
apm stars --install

# App Store
# mas search 'affinity designer'
mas install 824171161
# mas search 'pipifier'
mas install 1160374471
# mas search 'wechat'
mas install 836500024
# mas search 'xcode'
mas install 497799835

# Services
brew services start syncthing

# Optional
brew services start mysql@5.7
brew services start mongodb
brew services start redis
