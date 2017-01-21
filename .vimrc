syntax enable
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
set incsearch
set number
set hlsearch
set nocompatible
set noru
"here are some key mappings
inoremap jk <esc>
vmap <C-_> gc
nmap <C-_> gcc
nmap <S-j> 9j
nmap <S-k> 9k
"
filetype off 

"
" Vundle ish
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
"put more plugins here after this
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-commentary'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'godlygeek/csapprox'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()

filetype indent plugin on

" Syntastic ish
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_auto_jump = 2
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

let g:ycm_autoclose_preview_window_after_completion = 1
" set t_Co=16
set t_Co=256
colorscheme gruvbox
set background=dark
highlight Comment cterm=italic
au FileType * set fo-=c fo-=r fo-=o
" hi Normal ctermbg=none
" highlight NonText ctermbg=none
