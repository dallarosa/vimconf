set nocompatible
filetype off

"" Call Pathogen
call pathogen#infect()

"" Encoding
set fenc=utf8
set fencs=utf8,euc-jp,iso-2022-jp,cp932,default,latin1 
set showcmd                     " display incomplete commands


"" Whitespace

set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2 softtabstop=2 " a tab is two spaces
set noexpandtab 
"set expandtab                   " use spaces, not tabs
set backspace=indent,eol,start  " backspace through everything in insert mode
map <F4> :%s/\s\+$  <CR>
set listchars=eol:$,tab:__,trail:~,extends:>,precedes:<
set list

""Syntax & Identation

syntax enable
filetype plugin indent on 
set nosmartindent
set autoindent
"set cinkeys=0{,0},:,0#,!,!^F


"" Searching

set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                  " ... unless they contain at least one capital letter
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR> " Space to clear highlighting and messages

set number                     "Display line number

""Set up the status line

set ls=2                        "Always show status line

"" Window Resizing

map <F5> :res 300 <CR>
map <F6> :vertical res 300 <CR>
map <F7> :vertical res 150 <CR>

"" Maximizing and Restoring of Panes
nmap t% :tabedit %<CR>
nmap td :tabclose<CR>

"" PHP Lint
map <F3> :!php -l % <CR>

"" Commenting/Uncommenting

map <C-D> :s/^/\/\//g <CR> :nohlsearch<Bar>:echo<CR>              " Adds C-like comments
map <C-U> :s/\/\///g <CR> :nohlsearch<Bar>:echo<CR>               " Removes C-like comments

"" taglist settings
let Tlist_Ctags_Cmd = "/usr/local/bin/ctags"
let Tlist_WinWidth = 50
map <F4> :TlistToggle<cr>

"" Color Scheme
colorscheme koehler

"" Syntastic
let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=1
let g:syntastic_auto_loc_list = 1
let g:syntastic_javascript_checker = 'jshint'
