" Colors
"set t_Co=256 " use 256 colors
syntax enable           " enable syntax processing
"colorscheme solarized

" Spaces and Tabs
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set shiftwidth=2 " controls number of spaces insdeted by '>>/<</==' indentation in Visual Mode. also affects automatic indentation, if enabled.

" UI Config
set number              " show line numbers
set rnu                 " use relative line numbering
set showcmd             " show last command in bottom bar
"set cursorline          " highlight current line
set hidden              " allow switching files without saving
set linebreak           " Only wrap lines on word boundries (whitespace)
filetype indent on      " load filetype-specific indent files
"set wildmenu            " visual autocomplete for command menu
"set lazyredraw          " redraw only when we need to.
let loaded_matchparen = 1 " don't highlight matching brackets
match Todo /\s\+$/ "highlight trailing whitespace

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

" Reselect lines in visual mode after indenting
vnoremap > >gv
vnoremap < <gv

" Insert newline without staying in insert mode
nmap <S-Enter> O<Esc>j
nmap [<Space> O<Esc>j
nmap ]<Space> o<Esc>k

" Insert single space without leaving normal mode
nnoremap <space> i<space><Right><esc>

" PLUGINS
" install plugins
set runtimepath^=~/.vim/bundle/ctrlp.vim
set runtimepath^=~/.vim/bundle/vim-commentary
set runtimepath^=~/.vim/bundle/vim-obsession
set runtimepath^=~/.vim/bundle/vim-tmux-navigator
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
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
" let g:user_emmet_leader_key='<leader>e'

