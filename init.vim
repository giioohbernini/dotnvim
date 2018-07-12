call plug#begin()
Plug 'joshdick/onedark.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'roxma/nvim-completion-manager'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
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

let mapleader="\<space>"

let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'unicode'
let g:airline_theme= 'seagull'
let g:airline#extensions#tabline#formatter = 'jsformatter'

let g:UltiSnipsEditSplit = 'vertical'
let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'

let g:python_host_prog = '/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7'
let g:python3_host_prog = '/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7'

let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=1
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=1


syntax on
set background=dark
colorscheme onedark

set number
set relativenumber
set hidden
set mouse=a
set inccommand=split
set clipboard=unnamed
set shell=/bin/zsh
set nospell

nnoremap <leader>N :setlocal number!<cr>
nnoremap <leader>; A;<esc>0
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
nnoremap <leader>p :Files<cr>
nnoremap <leader>f :Ag<space>

map <C-B> :NERDTreeToggle<CR>

" Ajusta o tamanho de tab
set shiftwidth=2

" comportamento do backspace
set backspace=2

" backspace respeitar identação
set softtabstop=2

" Tamanho da identação
set tabstop=2

" Background none
hi Normal guibg=NONE ctermbg=NONE

" Remove arrow instead of tabs
 set nolist

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>t :enew<cr>

" Move to the next buffer
nmap <leader>n :bnext<CR>

" Move to the previous buffer
nmap <leader>b :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>q :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>v :ls<CR>

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" bind K to grep word under cursor
nnoremap K :call Ag("<C-R><C-W>") <CR>:cw<CR>

" bind \ (backward slash) to grep shortcut
nnoremap \ :call Ag("")<left><left>

function! Ag(foo)
  let a:root = system('npm bin | rev | cut -d "/" -f3- | rev')
  execute 'Ag '. a:foo .' ' . a:root 
endfunction
