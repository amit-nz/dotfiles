#!/bin/sh
# Git clone dotfiles repo to ~/.dotfiles

# Config
readonly RUBY_VERSION=2.5.5
readonly NODE_VERSION=node@10
# Config end

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

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
brew install watch
brew install wget

# GUI apps
# Manual install for security:
# brew cask install 1password
brew cask install appdelete
brew cask install discord
brew cask install firefox
brew cask install istat-menus
brew cask install iterm2
brew cask install skype
brew cask install spotify
brew cask install steam
brew cask install telegram-desktop
brew cask install transmission
brew cask install vlc
brew cask install visual-studio-code
# brew cask install vmware-fusion

# Development
brew cask install imageoptim
brew cask install postman
brew cask install sequel-pro
# brew cask install sketch
brew cask install sourcetree
brew cask install transmit

# vagrant
brew cask install vagrant
brew cask install vagrant-vmware-utility
vagrant plugin install vagrant-vmware-desktop

# zsh
brew install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
rm ~/.zshrc

# dotfiles
brew tap thoughtbot/formulae
brew install rcm
rcup -v -x misc -x README.md

# vim
brew install vim
vim +'PlugInstall --sync' +qa

# Ruby
brew install rbenv
rbenv install $RUBY_VERSION
rbenv global $RUBY_VERSION
gem install bundler
gem install rails

# Node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
nvm install --lts
brew install yarn
yarn global add nodemon

# Database servers
brew install mysql@5.7
mysql_secure_installation

brew install redis
brew tap mongodb/brew
brew install mongodb-community

# App Store
# mas search '1blocker'
mas info 1107421413 && mas install 1107421413
# mas search 'affinity designer'
mas info 824171161 && mas install 824171161
# mas search 'magnet'
mas info 441258766 && mas install 441258766
# mas search 'pipifier'
mas info 1160374471 && mas install 1160374471
# mas search 'wechat'
mas info 836500024 && mas install 836500024
# mas search 'xcode'
mas info 497799835 && mas install 497799835

# Services
brew services start syncthing

# Optional
brew services start mysql@5.7
brew services start mongodb
brew services start redis
