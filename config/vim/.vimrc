if !exists("g:syntax_on")
    " only turn on syntax highlighting if it isn't on already
    " fixes issues with highlighting when sourcing vimrc
    syntax enable
endif

" set nocompatible " required by Vundle
" filetype off " required by Vundle

" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin('~/.vim/bundle/vundle-plugins')

" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'

" Initialize vim-plug
" call plug#begin(stdpath('data') . '/plugged')
" 
" " Vue JS
" Plug 'posva/vim-vue'
" Plug 'sheerun/vim-polyglot'
" Plug 'ctrlp.vim'
" Plug 'christoomey/vim-tmux-navigator'
" Plug 'NLKNguyen/papercolor-theme'
" Plug 'pangloss/vim-javascript'
" Plug 'vim-airline/vim-airline'
" 
" " UltiSnips
" Plug 'SirVer/ultisnips'
" 
" " Snippets are separated from the engine. Add this if you want them:
" Plug 'honza/vim-snippets'
" Plug 'joaohkfaria/vim-jest-snippets'
" 
" " Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-]>"
" let g:UltiSnipsJumpBackwardTrigger="<c-[>"
" 
" " If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"
" 
" " All of your Plugins must be added before the following line
" " call vundle#end()            " required
" 
" call plug#end()

" load filetype-specific indent files
filetype plugin indent on    " required by Vundle

" Colors
" set t_Co=256 " use 256 colors
set background=dark

" Spaces and Tabs
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set shiftwidth=2 " controls number of spaces insdeted by '>>/<</==' indentation in Visual Mode. also affects automatic indentation, if enabled.
set breakindent " make wrapped lines match the indentation of their parent.

" UI Config
set number              " show line numbers
set rnu                 " use relative line numbering
set showcmd             " show last command in bottom bar
set visualbell          " turn off beeping
"set cursorline          " highlight current line
set hidden              " allow switching files without saving
set linebreak           " Only wrap lines on word boundries (whitespace)
set wildmenu            " visual autocomplete for command menu
"set lazyredraw          " redraw only when we need to.
let loaded_matchparen = 1 " don't highlight matching brackets
match Todo /\s\+$/ "highlight trailing whitespace
set shortmess+=A " Don't display warnings about existing swap files

" Clipboard
set clipboard=unnamed

" Window navigation
set splitright
map <C-H> <C-W>h
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l

" Search
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default

" File Settings
" automatically read .hbs files as HTML
autocmd BufNewFile,BufRead *.hbs set syntax=html

" Custom Keybindings
let mapleader=","

" Easier saving
nnoremap <Leader>w :w<CR>

" Remap Escape
inoremap jk <esc>
inoremap kl <esc>

" Editing Shortcuts

" Reselect lines in visual mode after indenting
vnoremap > >gv
vnoremap < <gv

" Insert newline without staying in insert mode
nmap <S-Enter> O<Esc>j
nmap [<Space> O<Esc>j
nmap ]<Space> o<Esc>k

" Insert single space without leaving normal mode
nnoremap <space> i<space><Right><esc>

" Delete quote contents
nnoremap d" di"
nnoremap d' di'
nnoremap c" ci"
nnoremap c' ci'

" commenting?
"map \lo I/*<Esc>A*/<Esc>
map \lo I//<Esc>
"map <c-_> I/*<Esc>A*/<Esc>

" PLUGINS
" install plugins
set runtimepath^=~/.vim/bundle/vim-commentary
set runtimepath^=~/.vim/bundle/vim-obsession
" set runtimepath^=~/.vim/bundle/vim-tmux-navigator
set runtimepath^=~/.vim/bundle/vim-surround
set runtimepath^=~/.vim/bundle/vim-repeat

" CtrlP settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_match_window = 'top,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
"let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" EMMET
" imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
" let g:user_emmet_leader_key='<leader>e'

"VIM-AIRLINE
let g:airline#extensions#tabline#enabled = 1

" Messin' Around
nmap <leader>t :echo "Hi there!"<CR>

" VimDiff Settings

" set a more reasonable colorscheme until neovim is installed & configured
" may want to move this somewhere else later
colorscheme zellner

