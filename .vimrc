syntax on

" Indenting
set tabstop=8     " tabs are at proper location
set expandtab     " don't use actual tab character (ctrl-v)
set shiftwidth=4  " indenting is 4 spaces
set autoindent    " turns it on
set smartindent   " does the right thing (mostly) in programs
set cindent       " stricter rules for C programs

" Line numbers
set number
set relativenumber

" Color
color simple-dark

" Remove netrw banner
let g:netrw_banner=0

" Statusline
set laststatus=2
set statusline=%f         " Path to the file
set statusline+=\         " Separator
set statusline+=%y        " File type
set statusline+=%=        " Switch to the right side
set statusline+=%l        " Current line
set statusline+=/         " Separator
set statusline+=%L        " Total lines
set statusline+=%m        " File modified state
