call plug#begin('~/.config/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'romainl/apprentice'
Plug 'junegunn/fzf', {'do': {-> fzf#install()}}
Plug 'junegunn/fzf.vim'
Plug 'ycm-core/YouCompleteMe'
call plug#end()

syntax on
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='deus'
let g:netrw_browser_split = 2 
let g:netrw_banner = 0
let g:netrw_winsize = 25

let mapleader = " "
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>l :wincmd l<CR>
inoremap kj <esc>

nnoremap <silent> <leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <leader>gf :YcmCompleter FixIt<CR>

set colorcolumn=80
colorscheme apprentice


