set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/syntastic'
Bundle 'wakatime/vim-wakatime'
" Plugin 'davidhalter/jedi-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" configuration for syntastic
let g:syntastic_check_on_open=1
let g:syntastic_python_flake8_args="--ignore=E501,W601"

set t_Co=256
colorscheme badwolf

set backspace=indent,eol,start
set encoding=utf-8

syntax on
set ai
set nu

set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab

set hlsearch
set incsearch
set smartindent
set cursorline
