" Download vim plug if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	 \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Download plugins (install with :PlugInstall)
call plug#begin('/home/sskye/.vim/plugged')
Plug 'arcticicestudio/nord-vim'
Plug 'sheerun/vim-polyglot'
Plug 'stevearc/vim-arduino'
call plug#end()

augroup nord-theme-overrides
    autocmd!
    autocmd ColorScheme nord highlight Comment ctermfg=15 guifg=#ECEFF4
augroup END

colorscheme nord

" Arduino keybindings
nnoremap <buffer> <leader>am :ArduinoVerify<CR>
nnoremap <buffer> <leader>au :ArduinoUpload<CR>
nnoremap <buffer> <leader>ad :ArduinoUploadAndSerial<CR>
nnoremap <buffer> <leader>ab :ArduinoChooseBoard<CR>
nnoremap <buffer> <leader>ap :ArduinoChooseProgrammer<CR>

" my_file.ino [arduino:avr:uno] [arduino:usbtinyisp] (/dev/ttyACM0:9600)
function! MyStatusLine()
    let port = arduino#GetPort()
    let line = '%f [' . g:arduino_board . '] [' . g:arduino_programmer . ']'
    if !empty(port)
        let line = line . ' (' . port . ':' . g:arduino_serial_baud . ')'
    endif
    return line
endfunction
setl statusline=%!MyStatusLine()

set history=500

filetype plugin on
filetype indent on

syntax enable

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


