set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set relativenumber
set nu
set nohlsearch
set hidden
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set signcolumn=yes
set rtp +=~/.config/nvim    
set clipboard=unnamedplus

let mapleader = ' ' 

" for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" for nerdtree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" easier way to save
nnoremap <Leader>w :w<CR>

" for editing and saving init.vim
map <Leader>E :e $MYVIMRC<CR>
map <Leader>S :source $MYVIMRC<CR>

call plug#begin('~/.config/nvim/plugged')
Plug 'https://github.com/Raimondi/delimitMate'
Plug 'https://github.com/vim-syntastic/syntastic'
Plug 'https://github.com/lifepillar/vim-gruvbox8'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch':'release'}
"Plug 'https://github.com/nvim-treesitter/nvim-treesitter'
Plug 'https://github.com/neoclide/coc.nvim'

call plug#end()

inoremap jk <Esc>
inoremap kj <Esc>
nnoremap <C-o> o<esc>kO<esc>j

nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
nnoremap <C-p> :GFiles<CR>

nnoremap Y $y
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z
nnoremap <C-j> :cnext<CR>zzzv


" for coc
source ~/.config/nvim/plug-config/coc.vim


colorscheme gruvbox8_hard
