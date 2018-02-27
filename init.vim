" set runtimepath+=~/.vim,~/.vim/after                                                    
" set packpath+=~/.vim                                                                    
" source ~/.vimrc                                                                         
"                                                                                         
let mapleader="\<SPACE>"                                                                  
                                                                                          
set mouse=a                                                                               
" set termguicolors                                                                       
                                                                                          
set expandtab                                                                             
set shiftwidth=4                                                                          
set softtabstop=4                                                                         
set autoindent                                                                            
set smartindent                                                                           
set incsearch                                                                             
set hlsearch                                                                              
" set number                                                                              
set smartcase                                                                             
set laststatus=0                                                                          
set rulerformat=%25(%f\ \ \ %P%)                                                          
                                                                                          
vmap <C-_> gc                                                                             
nmap <C-_> gcc                                                                            
nmap <S-j> 10j                                                                            
nmap <S-k> 10k                                                                            
                                                                                          
" Plugins                                                                                 
call plug#begin('~/.local/share/nvim/plugged')                                            

" Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'jnurmine/Zenburn'

call plug#end()

colorscheme zenburn

let g:fzf_nvim_statusline = 0
" nnoremap <silent> <leader>f :GFiles<CR>
nnoremap <silent> <leader>f :Files<CR>
nnoremap <silent> <leader>t :Tags<CR>
nnoremap <silent> <leader>l :BLines<CR>
nnoremap <silent> <leader>b :Buffers<CR>
" nnoremap <silent> <leader>h :History<CR>
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
