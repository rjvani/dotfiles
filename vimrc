" File: .vimrc
" Author: Rohan Jadvani

" Necessary for vim to be cool
set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" My vim plugins
Plugin 'groenewege/vim-less'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'

call vundle#end()
filetype plugin indent on

" Make backspace normal
set backspace=indent,eol,start

" Basic display settings
set number
set ruler
set cursorline
set history=1000
set colorcolumn=80
set showcmd

" Tab settings
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
retab

" Display optimizations
set ttyfast
set ttyscroll=3
set lazyredraw

" Scroll offset
set scrolloff=5

" Syntax highlighting
if !empty(&t_Co) || has("gui_running")
  syntax on
endif

" Allow mouse usage
if has("mouse")
  set mouse=a
endif

" Cursor configuration
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"

" Airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ":t"

" Solarized Color Theme Preferences
let g:solarized_termcolors=16
set background=dark
colorscheme solarized

" Status line
set laststatus=2
set t_Co=256
set noshowmode

" Get rid of annoying warnings.
command WQ wq
command Wq wq
command W w
command Q q

" Function for toggling relative line numbers.
function! NumberToggle()
  if (&relativenumber)
    set number
  else
    set relativenumber
  endif
endfunc

" Toggle relative line numbers.
map <silent> <C-m> :call NumberToggle()<cr>

" NERDTree shortcuts
map <silent> <C-n> :NERDTreeToggle<CR>
map <silent> <C-o> :bp<CR>
map <silent> <C-p> :bn<CR>
nnoremap q :bp\|bd #<CR>

" Strip whitespace on save.
autocmd BufWritePre * StripWhitespace

" Filetype space configurations.
autocmd FileType c   setlocal shiftwidth=2
autocmd FileType c   setlocal tabstop=2
autocmd FileType c   setlocal softtabstop=2
autocmd FileType sml setlocal shiftwidth=2
autocmd FileType sml setlocal tabstop=2
autocmd FileType sml setlocal softtabstop=2

