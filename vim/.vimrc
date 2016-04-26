syntax enable

" let mapleader = ','                           "change the default leader key
set backspace=indent,eol,start                  "make backspace work normally

"-----------------Visuals--------------------"
set number                                      "show line numbers
set linespace=5                                "macvim - set the spacing between each line

"set the theme
colorscheme atom-dark

"use only 256 colours in the terminal mode
set t_CO=256

"set the font to firacode - size 14
set guifont=Fira_Code:h13
"hide the scrollbars
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

"-----------------Search---------------------"
set hlsearch

"-----------------Mappings-------------------"

"when in normal mode, `,ev` opens the vimconfig in a new tab
nmap <Leader>ev :tabedit $MYVIMRC<cr>
"turn off search highlighting
nmap <Leader><space> :nohlsearch<cr>

"-----------------An normal mode, `,ev` opens the vimconfig in a new tabuto Commands--------------"
augroup autosourcing
	autocmd!
	"automatically source the vimrc file when we write new changes to it
	autocmd BufWritePost .vimrc source %
augroup END
