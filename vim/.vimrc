set nocompatible              " be iMproved, required
set nofoldenable
set tabstop=2
set shiftwidth=2
set expandtab
set nowrap
set textwidth=0
set wrapmargin=0

" Source our vundle vim plugins
" so ~/.vim/plugins.vim

" auto reload vim when the .vimrc is updated
autocmd! bufwritepost .vimrc source %

syntax enable

let mapleader = ','                             " change the default leader key
set backspace=indent,eol,start                  "make backspace work normally

" Fix indenation
set autoindent 
set smartindent

"-----------------Visuals--------------------"
set number                                      "show line numbers
set linespace=5                                "macvim - set the spacing between each line

"set the default position for new splits
set splitbelow
set splitright

"set the theme
" colorscheme Tomorrow-Night-Eighties

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
"show the tree view - CMD+1
nmap <Leader>1 :NERDTreeToggle<cr> 
"show the defined tags - use
nmap <Leader>tt :CtrlPBufTag<cr>
"show the most recently used files
nmap <Leader>mru :CtrlPMRUFiles<cr>

"-----------------Plugins--------------------"
"/ CtrlP config
" files to ignore
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'
" some more ignores
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" Make sure the airline status bar is displayed
set laststatus=2

"-----------------An normal mode, `,ev` opens the vimconfig in a new tabuto Commands--------------"
augroup autosourcing
	autocmd!
	"automatically source the vimrc file when we write new changes to it
	autocmd BufWritePost .vimrc source %
augroup END

"-----nvim-----"
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins config
" call plug#begin('~/.vim/bundle')
" Plug 'junegunn/vim-plug'
" call plug#end()

" use powerline fonts for airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
" set airline theme
let g:airline_theme='papercolor'

" oceanic theme settings
" syntax on
" let g:oceanic_next_terminal_bold = 1
" let g:oceanic_next_terminal_italic = 1
" colorscheme OceanicNext

" Vim markdown settings
let g:mkdx#settings     = { 'highlight': { 'enable': 1 },
                        \ 'enter': { 'shift': 1 },
                        \ 'links': { 'external': { 'enable': 1 } },
                        \ 'toc': { 'text': 'Table of Contents', 'update_on_write': 1 },
                        \ 'fold': { 'enable': 1 } }
let g:polyglot_disabled = ['markdown'] " for vim-polyglot users, it loads Plasticboy's markdown
                                       " plugin which unfortunately interferes with mkdx list indentation.
				       "
" Language server settings
let g:LanguageClient_serverCommands = {
    " \ 'reason': ['/absolute/path/to/reason-language-server.exe'],
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    \ }

set background=dark
colorscheme hybrid_material
