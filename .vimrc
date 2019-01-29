set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"--------------"
" Other plugins"
Plugin 'scrooloose/nerdtree'
Plugin 'Chiel92/vim-autoformat'
"Plugin 'fatih/vim-go'
"Plugin 'rjohnsondev/vim-compiler-go'
Plugin 'scrooloose/syntastic'
Plugin 'mattn/emmet-vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'moll/vim-node'
Plugin 'lervag/vimtex'
Plugin 'godlygeek/tabular'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-surround'
Plugin 'nanotech/jellybeans.vim'
Plugin 'nvie/vim-flake8'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'


call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

" Relative numbers
set relativenumber 
set mouse=r
set backspace=indent,eol,start

" Set colors
syntax on
" Render only on changes
set lazyredraw
" Persistent undo
if has('persistent_undo')      "check if your vim version supports it
  set undofile                 "turn on the feature  
  set undodir=$HOME/.vim/undo  "directory where the undo files will be stored
  endif     

" Swapfiles
set directory=$HOME/.vim/swapfiles//
"Custom shortcuts
imap ;; <Esc>
"let g:user_emmet_leader_key=']'
let mapleader=","

"Syntatic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"let g:golang_goroot = "/usr/local/go"
let g:airline_theme='wombat'

" Python run
nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>
" Jellybeans colors
color jellybeans

" Pasting with indentations
set pastetoggle=<F2>

" Change tab size
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
set sts=4
" On pressing tab, insert 4 spaces
set expandtab

" Automatic reloading of .vimrc
if has('autocmd')
    autocmd! bufwritepost .vimrc source %
endif

