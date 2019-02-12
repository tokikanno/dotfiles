if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
" Make sure you use single quotes

Plug 'mhinz/vim-grepper'
Plug 'easymotion/vim-easymotion'
Plug 'bronson/vim-trailing-whitespace'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-commentary'
Plug 'w0rp/ale'
Plug 'mkitt/tabline.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'posva/vim-vue'
" Plug 'xolox/vim-misc'
" Plug 'xolox/vim-easytags'
Plug 'majutsushi/tagbar'
Plug 'universal-ctags/ctags'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Chiel92/vim-autoformat'

" Initialize plugin system
call plug#end()

" use ag for honor .gitignor on fzf
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" use flake8 as python linter
let g:ale_linters = {
\   'python': ['flake8'],
\}
let g:ale_lint_delay = 1000

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

set t_Co=256
if &term =~ '256color'
    " disable Background Color Erase (BCE) so that color schemes
    " render properly when inside 256-color tmux and GNU screen.
    " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
    set t_ut=
endif

" set background=dark
colorscheme basic-dark
" highlight Normal ctermbg=NONE
" highlight nonText ctermbg=NONE

set backspace=indent,eol,start

"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set bomb
set binary

syntax on
set ai
set nu

set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab

set hlsearch
set incsearch
set ignorecase
set smartcase
set smartindent
set cursorline
set cursorcolumn
set splitright
set splitbelow
" highlight CursorLine ctermbg=54 ctermfg=None
" highlight CursorColumn ctermbg=58 ctermfg=None

set fileformats=unix,dos,mac

" disable mouse control
" set mouse-=a

noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>

" start of auto paste mode
function! WrapForTmux(s)
    if !exists('$TMUX')
        return a:s
    endif

    let tmux_start = "\<Esc>Ptmux;"
    let tmux_end = "\<Esc>\\"

    return tmux_start . substitute(a:s, "\<Esc>", "\<Esc>\<Esc>", 'g') . tmux_end
endfunction

let &t_SI .= WrapForTmux("\<Esc>[?2004h")
let &t_EI .= WrapForTmux("\<Esc>[?2004l")

function! XTermPasteBegin()
    set pastetoggle=<Esc>[201~
    set paste
    return ""
endfunction

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()
" end of auto paste mode

"airline theme
let g:airline_theme='violet'

"tagbar hotkey
nmap <F12> :TagbarToggle<CR>

" easytags async mode
let g:easytags_async=1

" autoformat
noremap <F3> :Autoformat<CR>
let g:formatters_python = ['yapf', 'autopep8', 'black']

set redrawtime=10000
