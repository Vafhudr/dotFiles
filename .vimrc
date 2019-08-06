set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

"Plugin 'valloric/youcompleteme'
Plugin 'plasticboy/vim-markdown'
Plugin 'godlygeek/tabular'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/syntastic'
Plugin 'nanotech/jellybeans.vim'
Plugin 'benmills/vimux'

call vundle#end()
filetype plugin indent on

"---OPTIONS---
set number
set relativenumber:
set noshowmode
set autoindent
set cursorline
set list lcs=tab:\|\
syntax enable

"---COLOR THEME---
colorscheme jellybeans
let g:airline_theme='jellybeans'

"---KEYBINDING---
map <C-n> :NERDTreeToggle<CR> 
