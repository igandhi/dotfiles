" .vimrc for Ike Gandhi

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'powerline/powerline'
Plugin 'klen/python-mode'
Plugin 'kien/ctrlp.vim'

call vundle#end()
" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Better copy/paste
set pastetoggle=<F2>
set clipboard=unnamed

" Mouse and backspace
set mouse=a
set bs=2

" Leader key
let mapleader=","

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" map sort function to key
vnoremap <Leader>s :sort<CR>

" Color scheme
set t_Co=256
color wombat256mod

filetype off
filetype plugin indent on
syntax on

set number
set tw=79
set nowrap
set fo-=t
set colorcolumn=80
highlight ColorColumn ctermbg=233

set history=700
set undolevels=700

set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

set hlsearch
set incsearch
set ignorecase
set smartcase

" Disable arrow keys. hjkl FTW
inoremap <Up>       <NOP>
inoremap <Down>     <NOP>
inoremap <Left>     <NOP>
inoremap <Right>    <NOP>
nnoremap <Up>       <NOP>
nnoremap <Down>     <NOP>
nnoremap <Left>     <NOP>
nnoremap <Right>    <NOP>
