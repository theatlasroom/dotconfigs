" Vim-Plug config
call plug#begin('~/.local/share/nvim/plugged')
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf' " if not installed already 
Plug 'teto/nvim-palette', { 'do': ':UpdateRemotePlugins'}

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'honza/vim-snippets'

Plug 'https://github.com/tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'kien/ctrlp.vim' " File opening shenanigans

" Languages
Plug 'neovim/go-client'
Plug 'awetzel/neovim-elixir'
Plug 'neovim/node-client'
" Plug 'SidOfc/mkdx'
Plug 'https://github.com/daa84/neovim-lib.git'
Plug 'mxw/vim-jsx'
Plug 'leshill/vim-json'
Plug 'tpope/vim-surround' " Adds thingies to add sorrounding stuff like ''
Plug 'sbdchd/neoformat' " Does formatting for many languages<Paste>
Plug 'jiangmiao/auto-pairs' " Auto closes a lot of stuff with smart behavior
Plug 'ap/vim-css-color' " Colorizes stuff
Plug 'w0rp/ale' " Runs testy thingies and warns about errors
Plug 'editorconfig/editorconfig-vim' " Grabs project editor configurations

" Editor
Plug 'mattn/emmet-vim'

" airline status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'qualiabyte/vim-colorstepper'

" tree
Plug 'philip-karlsson/bolt.nvim', { 'do': ':UpdateRemotePlugins' }

" find and replace
Plug 'brooth/far.vim'

" test runner
Plug 'janko-m/vim-test'

" show git diff in gutter
Plug 'mhinz/vim-signify'

" realign text
Plug 'godlygeek/tabular'

" nerdtree stuffff
Plug 'scrooloose/nerdtree'

" Themes
Plug 'arcticicestudio/nord-vim'
Plug 'mhartington/oceanic-next'
Plug 'https://github.com/AlessandroYorba/Sierra.git'
Plug 'https://github.com/AlessandroYorba/Breve.git'
Plug 'https://github.com/AlessandroYorba/Arcadia.git'
Plug 'https://github.com/rakr/vim-two-firewatch.git'
Plug 'iCyMind/NeoSolarized'
Plug 'kristijanhusak/vim-hybrid-material'

" icons
Plug 'ryanoasis/vim-devicons'

" Reasonml support
Plug 'reasonml-editor/vim-reason-plus'

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" for neovim
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" for vim 8 with python
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
  " the path to python3 is obtained through executing `:echo exepath('python3')` in vim
  let g:python3_host_prog = "/Users/bardock/.pyenv/shims/python3"
endif
call plug#end()

"""""""" Settings """""""""

" use powerline fonts for airline
" Vim markdown settings
let g:mkdx#settings     = { 'highlight': { 'enable': 1 },
                        \ 'enter': { 'shift': 1, 'o': 1 },
                        \ 'links': { 'external': { 'enable': 1 } },
                        \ 'toc': { 'text': 'Table of Contents', 'update_on_write': 1 },
                        \ 'fold': { 'enable': 1 } }
let g:polyglot_disabled = ['markdown'] " for vim-polyglot users, it loads Plasticboy's markdown
                                       " plugin which unfortunately interferes with mkdx list indentation.
                                       "
" Language server settings
let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    \ }

" use powerline fonts for airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
" set airline theme
let g:airline_theme='hybrid'

" configure hybrid theme
let g:enable_bold_font = 1
let g:enable_italic_font = 1
let g:hybrid_transparent_background = 1
set background=dark
colorscheme hybrid_material

" Enable JSX in JS files
let g:jsx_ext_required = 0

" Let NERDTree see dotfiles
let NERDTreeShowHidden = 1

" nerdtree bindings
map <C-n> :NERDTreeToggle<CR>
"switching to below window
no <C-j> <C-w>j 
"switching to above window
no <C-k> <C-w>k 
"switching to right window
no <C-l> <C-w>l 
"switching to left window
no <C-h> <C-w>h 

" only close vim if the last window left is a nerdtree...
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" devicons requires utf8
set encoding=UTF-8
set guifont=<FONT_NAME>:h<FONT_SIZE>
set guifont=DroidSansMono\ Nerd\ Font:h11
" or:
set guifont=DroidSansMono_Nerd_Font:h11
