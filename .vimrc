" Get plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmaric/vundle.vim'
filetype off

Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/The-NERD-tree'
Plugin 'vim-ruby/vim-ruby'
Plugin 'chriskempson/base16-vim'
Plugin 'bling/vim-airline'
Plugin 'paranoida/vim-airlineish'

call vundle#end()

filetype plugin indent on

" Enable Airline
let g:airline_enable_branch=1
let g:airline_detect_modified=1
let g:airline_detect_paste=1
set laststatus=2

" Set airline theme
let g:airline_theme='badwolf'

" Enable powerline font for VIM
if !exists('g:airline_symbols')
   let g:airline_symbols = {}
endif
if !exists('g:airline_powerline_fonts')
  let g:airline_left_sep = ''
  let g:airline_right_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.linenr = ''
 else
  let g:airline_left_sep = '▶'
  let g:airline_right_sep = '◀'
endif

" Config NERDTree
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR> " Map Ctrl+n to toggle NERD Tree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif " Make NERD tree auto close

" Set the color scheme
set background=dark
colorscheme base16-monokai

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
