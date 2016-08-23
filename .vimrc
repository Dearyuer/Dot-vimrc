set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}

"   <-   Custom Plugins

Plugin 'scrooloose/nerdtree'
Plugin 'tomtom/tcomment_vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'ervandew/supertab'

" vim-snipmate
Plugin 'tomtom/tlib_vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
" /vim-snipmate

Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'
Plugin 'flazz/vim-colorschemes'

Plugin 'shawncplus/phpcomplete.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Lokaltog/vim-powerline'

" PowerLine
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs

Plugin 'haya14busa/incsearch.vim'












"   <-   /Custom Plugins

" All of your Plugins must be added before the following line
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
" Put your non-Plugin stuff after this line

"   <-   Custom Settings

colorscheme molokai

" Encoding
" scriptencoding utf-8
" set encoding=utf-8

" set enc=utf-8
" set fillchars=vert:¦
scriptencoding utf-8
set encoding=utf-8




set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set number
set guifont=Monaco:h14
set autoindent

syntax on
set wildmenu
set colorcolumn=113
set ruler
" set visualbell 
" set t_vb=
" set vb t_vb=

set showcmd     " Show (partial) command in status line.
set showmatch   " Show matching brackets.
set ignorecase  " Do case insensitive matching
set smartcase   " Do smart case matching
set incsearch   " Incremental search
set autowrite   " Automatically save before commands like :next and :make
set hidden      " Hide buffers when they are abandoned

" hight the current line
set cursorline
" set cursorcolumn

" set cursor
set listchars=trail:·,precedes:<,extends:>,eol:¬,tab:▸·
set list
" set syntax=whitespace
" Map previous/next tab to F7/F8 
" map <F8> <ESC>:tabp<CR>
" map <F9> <ESC>:tabn<CR>
map <F8> <ESC>:tabp<CR>
map <F9> <ESC>:tabn<CR>

" Map Esc
imap <D-j> <Esc>

" autocmd FileType html let b:match_words = '<\(\w\w*\):</\1,{:}'
" autocmd FileType xhtml let b:match_words = '<\(\w\w*\):</\1,{:}'
" autocmd FileType xml let b:match_words = '<\(\w\w*\):</\1,{:}'
" autocmd FileType php let b:match_words = '<\(\w\w*\):</\1,{:}'

"   <-   /Custom Settings

" Mapping

no <down> ddp
no <left> <Nop>
no <right> <Nop>
no <up> ddkP
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>

iabbr ture true
iabbr flase false
iabbr FN function

"quick pairs
" imap <leader>' ''<ESC>i
" imap <leader>" ""<ESC>i
" imap <leader>( ()<ESC>i
" imap <leader>[ []<ESC>i

" Jump out of brackets
inoremap <S-Space> <esc>la

:" Map Ctrl-A -> Start of line, Ctrl-E -> End of line

" imap <C-a> <C-o>:call <SID>home()<CR>
imap <C-a> <Home>
imap <C-e> <End>
imap <C-k> <esc>lDa
imap <C-b> <esc>i
imap <C-f> <esc>la
imap <C-d> <Del>
imap <C-u> <esc>ddo

imap <C-p> <esc>ka
imap <C-n> <esc>ja

" imap <D-N> <esc>:NERDTree<CR>

" /Mapping