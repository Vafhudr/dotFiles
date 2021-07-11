syntax enable

set encoding=UTF-8
set nocompatible
set number
set relativenumber
set noerrorbells
set ts=4 sts=4 sw=4
set expandtab
set smartindent
set nowrap
set smartcase
set incsearch
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif
call plug#begin('~/.vim/plugged')
Plug 'mattn/emmet-vim'
Plug 'mbbill/undotree'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons'
call plug#end()
