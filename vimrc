" .vimrc for Ike Gandhi

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'powerline/powerline'
Plugin 'klen/python-mode'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'

call vundle#end()
" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Better copy/paste
set pastetoggle=<F2>
set clipboard=unnamed
set laststatus=2

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

" python-mode settings
let g:pymode_rope=1
let g:pymode_doc=1
let g:pymode_doc_key='K'
let g:pymode_lint=1
let g:pymode_link_checker="pyflakes,pep8"
let g:pymode_link_write=1
let g:pymode_virtualenv=1
let g:pymode_breakpoint=1
let g:pymode_breakpoint_bind='<leader>b'
let g:pymode_syntax=1
let g:pymode_syntax_all=1
let g:pymode_syntax_indent_errors=g:pymode_syntax_all
let g:pymode_syntax_space_errors=g:pymode_syntax_all
let g:pymode_folding=0

" NERDTree
nnoremap <Leader>ne :NERDTree<CR>
" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=1
" show hidden files in NERDTree
let g:NERDTreeShowHidden=1

" fuzzyfinder (CtrlP) plugin
nmap <silent> <leader>t :CtrlP<cr>
let g:ctrlp_map='<leader>t'

" vim air-line
let g:airline#extensions#tabline#enabled = 1

" Disable arrow keys. hjkl FTW
inoremap <Up>       <NOP>
inoremap <Down>     <NOP>
inoremap <Left>     <NOP>
inoremap <Right>    <NOP>
nnoremap <Up>       <NOP>
nnoremap <Down>     <NOP>
nnoremap <Left>     <NOP>
nnoremap <Right>    <NOP>

""""""""""""""""""""""""""""""""""""
" key mappings
"""""""""""""""""""""""""""""""""""""
" edit ~/.vimrc
map <leader>ev :e! ~/.vimrc<cr>

" switch betweenc current and last buffer
nmap <leader>. <c-^>
