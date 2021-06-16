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

"just in case i don't need the swapfile (in which i doubt i would)
set noswapfile

"NERDTree always change root dir, for compiling purposes and other stuffs 
set autochdir
let NERDTreeChDirMode=2

"Keybinds
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>c :term<CR>

"keymap regarding code (Who says that vim can't be a comfy IDE??)
nmap <C-i> :w<CR> :! python3 %<CR>

"Plugins
call plug#begin('~/.vim/plugged')

Plug 'https://github.com/preservim/nerdtree.git'
Plug 'https://github.com/itchyny/lightline.vim.git'
Plug 'https://github.com/vim-scripts/AutoComplPop.git'
Plug 'https://github.com/jiangmiao/auto-pairs.git'
Plug 'https://github.com/ghifarit53/tokyonight-vim'
Plug 'https://github.com/srcery-colors/srcery-vim'
Plug 'https://github.com/preservim/nerdcommenter.git'
Plug 'https://github.com/cocopon/iceberg.vim.git'

call plug#end()

"lightline settings
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ }

"my colorscheme
set t_Co=256
colorscheme iceberg "suits the iceage theme
"colorscheme tokyonight "suits better with dark bg
"colorscheme srcery  "suits better with light bg
set background=dark
set termguicolors

"tokyonight had problems with sourcing, so i did this
source $VIMRUNTIME/defaults.vim
