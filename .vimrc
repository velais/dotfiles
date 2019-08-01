set nocompatible              " be iMproved, required
filetype on                   " something
filetype off                  " required

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

if filereadable(expand("~/.vimrc.plug"))
	source ~/.vimrc.plug
endif

syntax on                     " turn on syntax highlighting
filetype plugin indent on

" Set..
set directory=~/.vim/swap//,.
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
"set ttymouse=xterm2
set clipboard+=unnamed

" Key Binding
noremap! jj <ESC>
set pastetoggle=<F2>
map q: :q

" Key shortcuts
let mapleader = ','
nnoremap <leader>a :Ag<space>
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <leader><space> :StripWhitespace<CR>

" Color Scheme
set t_Co=256
set t_ut=
set background=dark
let g:airline_powerline_fonts = 1
colorscheme gruvbox

" Rainbow parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" NERDTree
let NERDTreeShowHidden=1

" Ctrl-P
if executable('ag')
    " Use Ag over Grep
    set grepprg=ag\ --nogroup\ --nocolor
    "Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden --ignore .git -g ""'
endif
let g:ctrlp_show_hidden = 1

" Racer - Rust completion
let g:racer_cmd = "~/.vim/plugged/racer/target/release/racer"
let $RUST_SRC_PATH = "/usr/local/src/rustc-1.6.0/src"

" Vimwiki
let g:vimwiki_list = [{'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_global_ext = 0
let g:vimwiki_folding = 'custom'
let g:vimwiki_filetypes = ['markdown']

" vim_markdown
let g:vim_markdown_folding_style_pythonic = 1
let g:vim_markdown_override_foldtext = 0
let g:vim_markdown_folding_level = 2


