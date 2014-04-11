set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'tpope/vim-rails'
Plugin 'git://git.wincent.com/command-t'
Plugin 'tpope/vim-sleuth'
Plugin 'scrooloose/nerdtree'
Plugin 'kchmck/vim-coffee-script'
Plugin '29decibel/codeschool-vim-theme'

syntax on
filetype plugin indent on
colors codeschool

" NERDTree settings
autocmd vimenter * NERDTree
let NERDTreeShowBookmarks=1
