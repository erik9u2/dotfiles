" General
set nocompatible
set hidden
set encoding=utf-8

" Enable mouse interactions
set mouse=r

" Plugins
call plug#begin()
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

" ctrl+p settings
let g:ctrlp_working_path_mode = 'a'
let g:ctrlp_custom_ignore = '\v[\/](\.git|\.hg|\.svn|node_modules)$'

" Set tab size
set tabstop=2
set shiftwidth=0
set expandtab

" Don't wait for escape key
set timeoutlen=1000 ttimeoutlen=0

set nowrap
set ruler
set relativenumber

" Improved search
set hlsearch
set incsearch
set smartcase ignorecase

" Do not hide files
set wildignore=

" Terminal title
set title
set titlestring=%t
set titleold=

set path+=**

" Command auto completion
set wildmenu
set wildmode=longest,full

" Highlight anything over 80 chars with red
match ErrorMsg '\%>80v.\+'

" Theme
set background=dark

" Show invisible characters
set list
set listchars=tab:→\ ,trail:•
"set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¶,precedes:«,extends:»

" Clear search pattern shortcut
command C let @/=""
