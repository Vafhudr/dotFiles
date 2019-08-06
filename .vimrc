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
set noshowmode
colorscheme jellybeans
let g:airline_theme='jellybeans'
set list lcs=tab:\|\

"---KEYBINDING---
map <C-n> :NERDTreeToggle<CR> 
