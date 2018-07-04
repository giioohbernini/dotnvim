call plug#begin()
Plug 'joshdick/onedark.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
call plug#end()

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

set nospell

" [,t ] Toggle NERDTree
" "map <leader>t :NERDTreeToggle<CR>
map <C-B> :NERDTreeToggle<CR>

" Ajusta o tamanho de tab
set shiftwidth=2

" comportamento do backspace
set backspace=2

" backspace respeitar identação
set softtabstop=2

" Tamanho da identação
set tabstop=2
