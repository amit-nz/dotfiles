" Install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
" Themes
Plug 'joshdick/onedark.vim'
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
set mouse=a

" Theme
syntax on
colorscheme onedark

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" Lightline
let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ }

" NERDTree settings
let NERDTreeShowBookmarks=1
let NERDTreeWinSize=30
map <Leader>d :NERDTreeToggle<CR>

" FZF settings
nnoremap <Leader>t :Files<CR>

" OpenURL OS X
command! -bar -nargs=1 OpenURL :!open <args>
