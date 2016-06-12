set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-rails'
Plugin 'dsawardekar/ember.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-sleuth'
Plugin 'scrooloose/nerdtree'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mattn/emmet-vim'
Plugin '29decibel/codeschool-vim-theme'

call vundle#end()
filetype plugin indent on

syntax on
colors codeschool

" NERDTree settings
let NERDTreeShowBookmarks=1
map <Leader>d :NERDTreeToggle<CR>

" Ctrl P settings
let g:ctrlp_map = '<Leader>t'

" OpenURL OS X
:command -bar -nargs=1 OpenURL :!open <args>
