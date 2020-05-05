set nocompatible              " be iMproved, required
filetype off                  " required

if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
   set fileencodings=ucs-bom,utf-8,latin1
endif

set nocompatible	" Use Vim defaults (much better!)
set bs=indent,eol,start		" allow backspacing over everything in insert mode
set ai			" always set autoindenting on
"set backup		" keep a backup file
set viminfo='20,\"50	" read/write a .viminfo file, don't store more
			" than 50 lines of registers
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time

"**********************************************************************************
"These lines added by Jennifer
set number
set printoptions=number:n,paper:letter,duplex:off,portrait:n,left:3pc,right:3pc,wrap:n
set printfont=Courier:h10
set printheader=%<%f%h%m\ %{strftime('%m/%d/%y\ %X')}%=Page\ %N 
set showcmd
set matchpairs+=<:>
"set columns=80
"autocmd VimResized * if (&columns > 109) | set columns=110 | endif
"set wrap
set linebreak

"Trying to make things work with screen:
" set mouse=r             " hold shift to copy xterm
" set ttymouse=xterm2     " necessary for gnu screen & mouse

"**********************************************************************************



"******************************************************************************
"Added here also:
" For everything else, use a tab width of 2 space chars.
set tabstop=2       " The width of a TAB is set to 2.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 2.
set shiftwidth=2    " Indents will have a width of 2.
set softtabstop=2   " Sets the number of columns for a TAB.
set expandtab       " Expand TABs to spaces.



" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

filetype plugin on


" Don't wake up system with blinking cursor:
" http://www.linuxpowertop.org/known.php
let &guicursor = &guicursor . ",a:blinkon0"
