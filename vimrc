" Install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
" Themes
Plug 'chriskempson/base16-vim'
" Plugins
Plug 'itchyny/lightline.vim'
Plug 'dsawardekar/ember.vim'
Plug 'mattn/emmet-vim'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'tomtom/tcomment_vim'
Plug 'kchmck/vim-coffee-script'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
call plug#end()

" Custom
set number
set hidden
nmap <Space> <Leader>
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

" Theme
colorscheme base16-tomorrow-night

" Lightline
let g:lightline = {
      \ 'colorscheme': 'Tomorrow_Night',
      \ }

" NERDTree settings
let NERDTreeShowBookmarks=1
let NERDTreeWinSize=30
map <Leader>d :NERDTreeToggle<CR>

" FZF settings
nnoremap <Leader>t :Files<CR>

" OpenURL OS X
command! -bar -nargs=1 OpenURL :!open <args>
