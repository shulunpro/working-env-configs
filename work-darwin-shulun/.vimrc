" a minimalist and sophisticated vim config for the full-stack dev
" @author: Lyu Shulun (shulunpro@gmail.com)

" -- manage plugins with vim-plug --------------------------------------------

set nocompatible
filetype off

call plug#begin('~/.vim/plugged')
call plug#end()


" -- general config ----------------------------------------------------------

set nobackup
set noswapfile

set nonumber
set showmode
set ruler
set showcmd
set laststatus=0
set colorcolumn=78
set splitright
set splitbelow
set nocursorcolumn
set nocursorline

set hlsearch
set incsearch
set ignorecase
set smartcase

set autoindent
set smartindent

set autoread
set autowrite

set encoding=utf-8
set fileencodings=ucs-bom,utf-8,gbk,big5,gb18030,latin1

set backspace=indent,eol,start

set tabstop=2
set shiftwidth=2
set expandtab

set t_Co=256
colorscheme default

if has('persistent_undo')
  set undofile
  set undodir=~/.vim/tmp/undo//
endif 

set path+=**  " search down into sub-folders
set wildmenu  " display all match files when using tab completion


" -- custom mappings ---------------------------------------------------------

let mapleader=","

nnoremap <leader>w  :w<cr>
nnoremap <leader>q  :q<cr>
inoremap <leader>w  <esc>:w<cr>
inoremap <leader>q  <esc>:q<cr>

nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
