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
set foldmethod=marker
set autochdir
let g:netrw_banner=0
let g:netrw_winsize=20
let g:netrw_altv=1

"just in case i don't need the swapfile (in which i doubt i would)
set noswapfile

"Keybinds
nnoremap <leader>t :Lex<CR>
nnoremap <leader>c :term<CR>

"keymap regarding code (Who says that vim can't be a comfy IDE??)
nmap <C-i> :w<CR> :! python3 %<CR>

"Plugins
call plug#begin('~/.vim/plugged')

Plug 'https://github.com/itchyny/lightline.vim.git'
Plug 'https://github.com/vim-scripts/AutoComplPop.git'
Plug 'https://github.com/jiangmiao/auto-pairs.git'
Plug 'https://github.com/preservim/nerdcommenter.git'
Plug 'https://github.com/sainnhe/everforest'
Plug 'https://github.com/ghifarit53/tokyonight-vim'

call plug#end()

"lightline settings
set laststatus=2
let g:lightline = { 'colorscheme': 'tokyonight', }
"let g:lightline = { 'colorscheme': 'seoul256', }

"my colorscheme
set t_Co=256
set termguicolors
set term=st-256color
let g:tokyonight_style = 'night'
let g:tokyonight_enable_italic = 1
colorscheme tokyonight "suits better with light bg
"let g:everforest_background = 'hard'
set background=dark

let &t_8f = "\<ESC>[38;2;%lu;%lu;%lum"
let &t_8b = "\<ESC>[48;2;%lu;%lu;%lum"
