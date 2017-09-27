" set runtimepath+=~/.vim,~/.vim/after
" set packpath+=~/.vim
" source ~/.vimrc
"
let mapleader="\<SPACE>"

set mouse=a
set termguicolors

set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
set incsearch
set hlsearch
set number
set smartcase
set laststatus=0

vmap <C-_> gc
nmap <C-_> gcc
nmap <S-j> 10j
nmap <S-k> 10k

" Plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'sbdchd/neoformat'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-clang'
Plug 'ludovicchabant/vim-gutentags'
Plug 'tpope/vim-fugitive'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'kamwitsta/flatwhite-vim'

call plug#end()

" deoplete tab completeion
let g:deoplete#sources#clang#libclang_path = '/usr/local/Cellar/llvm/5.0.0/lib/libclang.dylib'
let g:deoplete#sources#clang#clang_header = '/usr/local/Cellar/llvm/5.0.0/lib/clang/'
let g:deoplete#enable_at_startup = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

let g:chromatica#libclang_path='/usr/local/Cellar/llvm/5.0.0/lib/libclang.dylib'
let g:chromatica#enable_at_startup = 1
hi link Variable NONE

" colorscheme onehalflight
colorscheme flatwhite

" autocmd Filetype c setlocal ts=8 sw=8 sts=8 expandtab

let g:fzf_nvim_statusline = 0
nnoremap <silent> <leader>f :GFiles<CR>
" nnoremap <silent> <leader>f :Files<CR>
nnoremap <silent> <leader>t :Tags<CR>
nnoremap <silent> <leader>l :BLines<CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>h :History<CR>
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gp :Gpush<CR>

" imap <silent><expr> <TAB>
"   \ pumvisible() ? "\<C-n>" :
"   \ <SID>check_back_space() ? "\<TAB>" :
"   \ deoplete#mappings#manual_complete()
" function! s:check_back_space() abort "{{{
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~ '\s'
" endfunction"}}}
"
