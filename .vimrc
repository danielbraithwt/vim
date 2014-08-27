" Get plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmaric/vundle.vim'
filetype off

Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/The-NERD-tree'
Plugin 'vim-ruby/vim-ruby'

call vundle#end()

filetype plugin indent on

" Turn syntax highlighting on
syntax on

" Use vim not vi api
set nocompatible

" Turn on intentation
filetype indent on

" Enable filetype specific plugins
filetype plugin on

" Set tab size
set tabstop=4
set shiftwidth=4

" Expand tabs to 4 spaces
"set expandtab

" Turn code foling off
set nofoldenable

" Turn word wrap off
set nowrap

" Turn on line numbers
set number

" Dont let ctrlp take over the screen
let g:ctrlp_max_height=30

" Enable mosue 
set mouse=a

" Hide mouse after chars typed
set mousehide
