" Download vim plug if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	 \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Download plugins (install with :PlugInstall)
call plug#begin('/home/sskye/.vim/plugged')
Plug 'arcticicestudio/nord-vim'
call plug#end()

set history=500

filetype plugin on
filetype indent on

syntax enable

colorscheme nord

set encoding=utf8

set expandtab
set smarttab

set shiftwidth=4
set tabstop=4

set ai
set si

set number
set relativenumber

" Start empty files in insert mode
autocmd BufNewFile * startinsert
autocmd VimEnter * if empty(expand("%")) | startinsert | endif


