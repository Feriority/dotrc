"Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set laststatus=2

" allow backspacing over everything in insert mode
set backspace=eol,indent,start

" Make a backup before overwriting a file.  The backup is removed 
" after the file was successfully written
set writebackup

set ruler		" Show the cursor position all the time 
set showmatch		" Match Parens
set matchtime=500	" Match for half a second
set pastetoggle=<F3>	" Toggle our paste mode to not indent
" set foldmethod=syntax	" Fold on syntax by default

" Make vim smart
syntax on
filetype plugin on
filetype indent on

colorscheme putty

" Break a line
map <Leader>f 072lBi<cr><esc>

" Tabbing
set expandtab
set softtabstop=4
set tabstop=4
set shiftwidth=4

set autowrite
set textwidth=0
set showcmd

" Encoding
set encoding=utf-8
set fileencoding=utf-8

" Fold Conf Files
au FileType conf syn region confBraces start="{" end="}" transparent fold

" I rarely write old-style sh. It's almost always bash:
let is_bash="true"

" If I paste and indentation gets fsck'd:
inoremap <silent> <C-g> <ESC>u:set paste<CR>.:set nopaste<CR>gi

" Tab Navigation
map <C-t> <ESC>:tabedit 
map <TAB> gt
map <S-TAB> gT

" Stuff that's stolen from the net, not from milki, goes here

" Search as you type
set incsearch

" Completion!
autocmd FileType python set omnifunc=pythoncomplete#Complete

" Cool extra python highlight stuff
let python_space_error_highlight = 1

set tags=./tags;/

" show line numbers - make use of the extra screen real-estate with
" textwidth set to 72.  Up to 4 digits are okay for line numbers
set number
set numberwidth=4

set viminfo='20,\"500

""" Language-related bindings
" LOLPython
au BufRead,BufNewFile *.lol set filetype=lolpython
let lolpython_space_error_highlight = 1

" Ren'Py
au BufRead,BufNewFile *.rpy set filetype=renpy

""" Finally, pathogen
execute pathogen#infect()
