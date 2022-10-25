filetype plugin indent on "Включает определение типа файла, загрузку...
"... соответствующих ему плагинов и файлов отступов
set encoding=utf-8 "Ставит кодировку UTF-8
set nocompatible "Отключает обратную совместимость с Vi
syntax enable "Включает подсветку синтаксиса
set number

if empty(glob('~/.vim/autoload/plug.vim')) 
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle') "Начать искать плагины в этой директории

Plug 'joshdick/onedark.vim' " ATOM ONE DARK THEME
Plug 'itchyny/lightline.vim' " ATOM STATUSBAR
"Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }   
Plug 'scrooloose/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
call plug#end() "Перестать это делать



let g:onedark_hide_endofbuffer=1
let g:onedark_termcolors=256
let g:onedark_terminal_italics=0
""""" ATOM STATUS BAR - LIGHTLINE
let g:lightline = {
	  \ 'colorscheme': 'onedark',
  \ }
set laststatus=2
"""""
""""" pymode
"let g:pymode_python = 'python3'
"""""
"""""NERDTree
nnoremap <F2> :NERDTreeToggle<CR>
set guifont=Hack\ Nerd\ Font:h16
set encoding=UTF-8
let g:airline_powerline_fonts = 1
"""""

colorscheme onedark
