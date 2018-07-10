call plug#begin()
Plug 'joshdick/onedark.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'roxma/nvim-completion-manager'
"Plug 'ncm2/ncm2'
"Plug 'roxma/nvim-yarp'
"Plug 'ncm2/ncm2-bufword'
"Plug 'ncm2/ncm2-tmux'
"Plug 'ncm2/ncm2-path'
"Plug 'ncm2/ncm2-jedi'
"Plug 'ncm2/ncm2-ultisnips'
Plug 'w0rp/ale' 
Plug 'jiangmiao/auto-pairs'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
call plug#end()

"autocmd BufEnter * call ncm2#enable_for_buffer()
"set completeopt=noinsert,menuone,noselect
"inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
"inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
"inoremap <c-c> <ESC>
"set shortmess+=c

let g:UltiSnipsEditSplit = 'vertical'
let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'

let g:python_host_prog = '/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7'
let g:python3_host_prog = '/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7'

nnoremap <leader>N :setlocal number!<cr>

syntax on
set background=dark
colorscheme onedark

set number
set relativenumber
set hidden
set mouse=a
set inccommand=split
set clipboard=unnamed

let mapleader="\<space>"
nnoremap <leader>; A;<esc>0

nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
nnoremap <leader>p :Files<cr>
nnoremap <leader>f :Ag<space>

set nospell

map <C-B> :NERDTreeToggle<CR>

" Ajusta o tamanho de tab
set shiftwidth=2

" comportamento do backspace
set backspace=2

" backspace respeitar identação
set softtabstop=2

" Tamanho da identação
set tabstop=2

