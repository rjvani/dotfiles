
" File:  .vimrc
" Author: Rohan Jadvani

set nocompatible

set backspace=indent,eol,start

set number
set ruler

set history=1000

set expandtab
set tabstop=2
retab

if !empty(&t_Co) || has("gui_running")
  syntax on
endif

if has("mouse")
  set mouse=a
endif 

match ErrorMsg '\%>79v.\+'

