set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc


call plug#begin(stdpath('data') . '/plugged')

" Vue JS
Plug 'christoomey/vim-tmux-navigator'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'

call plug#end()
