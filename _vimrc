set nocompatible              " be iMproved, required
filetype off                  " required

execute pathogen#infect()
syntax on
filetype plugin indent on

syntax enable
if has('gui_running')
    set background=light
	autocmd GUIEnter * set vb t_vb=
else
    set background=dark
endif
colorscheme solarized

set guifont=Courier_New:h9

" set the runtime path to include Vundle and initialize
set rtp+=~/vimfiles/bundle/Vundle.vim/
let path='~/vimfiles/bundle'
call vundle#begin(path)
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'pangloss/vim-javascript'

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces

set autoindent

au GUIEnter * simalt ~x

set clipboard=unnamed

" Copy to 'clipboard registry'
vmap <C-c> "*y

" Show line numbers

set nu

" Select all text
nmap <C-a> ggVG

nmap <C-v> "+gP

set autoindent
set smarttab
set noswapfile
set nobackup

"make backspace work like most other apps
set backspace=indent,eol,start

"use C-s for saving
noremap <C-s> :w<CR>
inoremap <C-s> <C-O>:w<CR>

"do not move the cursor after copy in visual mode
vmap y y`]
"completion
set completeopt=longest,menuone
