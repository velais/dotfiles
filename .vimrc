set nocompatible              " be iMproved, required
filetype on                   " something
filetype off                  " required


if filereadable(expand("~/.vimrc.plug"))
	source ~/.vimrc.plug
endif

syntax on                     " turn on syntax highlighting

filetype plugin indent on

" Key Binding
noremap! jj <ESC>
set pastetoggle=<F2>

" Set..
set hidden
set hls
set ruler
set showmatch
set number
set laststatus=2
set wildmenu
set wildignore=*.o,*~,*.pyc
set smartcase
set hlsearch
set incsearch
set expandtab
set shiftwidth=4
set tabstop=4
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set mouse=a
set ttymouse=xterm2

" Color Scheme
set t_Co=256
set t_ut=
set background=dark
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
colorscheme hybrid

" Rainbow parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Ctrl-P
if executable('ag')
    " Use Ag over Grep
    set grepprg=ag\ --nogroup\ --nocolor
    "Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden --ignore .git -g ""'
endif

" Racer - Rust completion
let g:racer_cmd = "~/.vim/plugged/racer/target/release/racer"
let $RUST_SRC_PATH = "/usr/local/src/rustc-nightly/src"

