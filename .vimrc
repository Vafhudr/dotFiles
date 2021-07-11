1   syntax enable
  1 
  2 set encoding=UTF-8
  3 set nocompatible
  4 set number
  5 set relativenumber
  6 set noerrorbells
  7 set ts=4 sts=4 sw=4
  8 set expandtab
  9 set smartindent
 10 set nowrap
 11 set smartcase
 12 set incsearch
 13 set noswapfile
 14 set nobackup
 15 set undodir=~/.vim/undodir
 16 set undofile
 17 
 18 
 19 
 20 
 21 " Install vim-plug if not found
 22 if empty(glob('~/.vim/autoload/plug.vim'))
 23   silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
 24     \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
 25 endif
 26 
 27 " Run PlugInstall if there are missing plugins
 28 autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
 29   \| PlugInstall --sync | source $MYVIMRC
 30 \| endif
 31 call plug#begin('~/.vim/plugged')
 32 Plug 'mattn/emmet-vim'
 33 Plug 'mbbill/undotree'
 34 Plug 'tpope/vim-fugitive'
 35 Plug 'preservim/nerdtree' |
 36             \ Plug 'Xuyuanp/nerdtree-git-plugin' |
 37             \ Plug 'ryanoasis/vim-devicons'
 38 call plug#end()
