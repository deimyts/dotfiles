set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

call plug#begin('~/.config/nvim/plugged')

Plug 'christoomey/vim-tmux-navigator'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'kevinoid/vim-jsonc'
Plug 'lambdalisue/fern.vim', {'branch': 'main'}
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tjdevries/colorbuddy.nvim'
Plug 'svrana/neosolarized.nvim', {'branch': 'main'}

call plug#end()

lua << EOF
  require('neosolarized').setup({
    comment_italics = true,
    background_set = false, -- set to "true" to override the underlying terminal bg color
  })
EOF

colorscheme neosolarized

"some more stuff?
function! SetupCommandAbbrs(from, to)
  exec 'cnoreabbrev <expr> '.a:from
        \ .' ((getcmdtype() ==# ":" && getcmdline() ==# "'.a:from.'")'
        \ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfunction

" Use C to open coc config
call SetupCommandAbbrs('C', 'CocConfig')

" coc-react-refactor
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" coc node path
" TODO: pull this from an env var
let g:coc_node_path = '~/.config/nvm/versions/node/v18.15.0/bin/node'

" Fern
map <F13> :Fern . -drawer -toggle<ENTER>
