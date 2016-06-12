#!/bin/sh

# Config
readonly RUBY_VERSION=2.3.1
readonly NODE_VERSION=homebrew/versions/node4-lts

# Config end

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/cask

# GUI apps
brew cask install google-chrome
brew cask install firefox
brew cask install dropbox
brew cask install atom
brew cask install skype
brew cask install vlc
# brew cask install sourcetree
# brew cask install 1password

# CLI apps
brew install tmux
brew install git
brew install syncthing
brew install imagemagick
brew tap thoughtbot/formulae
brew install rcm

# vim
brew install vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# zsh
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Ruby
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
cd ~/.rbenv && src/configure && make -C src
# Handled by dotfiles
#echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
#echo 'eval "$(rbenv init -)"' >> ~/.zshrc
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

rbenv install $RUBY_VERSION
rbenv global $RUBY_VERSION

gem install bundler
gem install rails

# Node
brew install $NODE_VERSION
npm install -g ember-cli

# Database servers
brew install mongodb
brew install mysql
brew install postgresql
