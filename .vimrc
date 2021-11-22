" General
set nocompatible
set hidden
set encoding=utf-8

" Enable mouse interactions
set mouse=r

" Plugins
call plug#begin()
Plug 'ctrlpvim/ctrlp.vim'
Plug 'posva/vim-vue'
Plug 'leafgarland/typescript-vim'
Plug 'sheerun/vim-polyglot'
Plug 'sainnhe/everforest'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
call plug#end()

" ctrl+p ignore
let g:ctrlp_custom_ignore = '\v[\/](\.git|\.hg|\.svn|node_modules)$'

" Set tab size
set tabstop=4
set shiftwidth=0
set noexpandtab

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

" Command auto completion
set wildmenu
set wildmode=longest,full

" Highlight anything over 80 chars with red
match ErrorMsg '\%>80v.\+'

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Tmuxline
let g:airline#extensions#tmuxline#enabled = 0
let g:tmuxline_powerline_separators = 0

" Theme
" macOS terminal does not support this
"if has('termguicolors')
"	set termguicolors
"endif
set background=dark
let g:everforest_background = 'soft'
colorscheme everforest

" Better tabs with airline
let g:airline#extensions#tabline#enabled = 1

" Show invisible characters
set list
set listchars=tab:→\ ,trail:•
"set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¶,precedes:«,extends:»

" Clear search pattern shortcut
command C let @/=""
