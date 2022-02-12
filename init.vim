call plug#begin('~/.config/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'romainl/apprentice'
Plug 'jiangmiao/auto-pairs'
Plug 'udalov/kotlin-vim'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()

syntax on
set encoding=utf-8
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set hidden
set nowritebackup

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='deus'
let g:netrw_browser_split = 2 
let g:netrw_banner = 0
let g:netrw_winsize = 25

let mapleader = " "
nnoremap <leader>w :w<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap ~~ `

colorscheme apprentice

"fzf configs
nnoremap <C-p> :GFiles<CR>

augroup filetype_Docker
	" Delete any preconfigured commands
	autocmd!
	autocmd FileType Dockerfile setlocal tabstop=4 shiftwidth=4
augroup end

set cc=
hi Normal guibg=NONE ctermbg=NONE
