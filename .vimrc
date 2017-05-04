syntax enable
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
set incsearch
set hlsearch
set nocompatible
" set noru
"here are some key mappings
inoremap jk <esc>
vmap <C-_> gc
nmap <C-_> gcc
nmap <S-j> 9j
nmap <S-k> 9k
noremap <F3> :Autoformat<CR>
"
filetype off 

"
" Vundle ish
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
"put more plugins here after this
Plugin 'tpope/vim-commentary'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'chriskempson/base16-vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()

filetype indent plugin on

let g:ycm_autoclose_preview_window_after_completion = 1
let base16colorspace=256
colorscheme base16-oceanicnext
highlight Comment cterm=italic
au FileType * set fo-=c fo-=r fo-=o
hi Normal ctermbg=none
highlight NonText ctermbg=none
