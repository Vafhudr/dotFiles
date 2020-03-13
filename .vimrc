set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'mattn/emmet-vim'
call vundle#end()
filetype plugin indent on

"---OPTIONS---
set number
set relativenumber
set noshowmode
set autoindent
set cursorline
set list lcs=tab:\|\
syntax enable

"---COLOR THEME---
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts = 1

"---KEYBINDING---"
map <F2> :NERDTreeToggle<CR>
