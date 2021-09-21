set nocompatible
syntax on
filetype plugin on

"just some stuffs that i think is great
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number relativenumber
set visualbell
set encoding=utf-8
set nowrap
set smartcase
set incsearch
set backspace=2
set splitbelow

"laptop has battery, pc doesn't. So this stays off
"set noswapfile

"NERDTree always change root dir, for compiling purposes and other stuffs 
set autochdir
let NERDTreeChDirMode=2

"Keybinds
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>c :term<CR>

"run python interpreter
nmap <C-i> :w<CR> :! python3 %<CR>

"Plugins
call plug#begin('~/.vim/plugged')

Plug 'https://github.com/preservim/nerdtree.git'
Plug 'https://github.com/itchyny/lightline.vim.git'
Plug 'https://github.com/vim-scripts/AutoComplPop.git'
Plug 'https://github.com/jiangmiao/auto-pairs.git'
Plug 'https://github.com/preservim/nerdcommenter.git'
Plug 'https://github.com/danilo-augusto/vim-afterglow'
Plug 'https://github.com/sainnhe/everforest'

call plug#end()

"lightline settings
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'everforest',
      \ }

"my colorscheme
set t_Co=256
"colorscheme afterglow "suits better with i3 config
colorscheme everforest "suits better with dwm config
let g:everforest_background = 'hard'
set background=dark
set termguicolors

"I had some problem with NERDTree (on win10)
let NERDTreeIgnore = ['\.DAT$', '\.LOG1$', '\.LOG1$']

"tokyonight had problems with sourcing, did this
source $VIMRUNTIME/defaults.vim
