syntax on 

" set noerrorbells
set tabstop=2 softtabstop=2
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
set encoding=utf-8
set nohlsearch
set mouse=a

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Auto-pair
Plug 'jiangmiao/auto-pairs'
" Indent guides
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tweekmonster/gofmt.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'mbbill/undotree'
Plug 'tpope/vim-dispatch'
Plug 'gruvbox-community/gruvbox'
Plug 'tpope/vim-projectionist'
Plug 'szw/vim-maximizer'
" JS
Plug 'pangloss/vim-javascript'
Plug 'othree/xml.vim'
Plug 'frazrepo/vim-rainbow'

imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)we
xmap <C-k>     <Plug>(neosnippet_expand_target)

" Fuzzy search
Plug 'ctrlpvim/ctrlp.vim'

" Ruby
Plug 'ruby-formatter/rufo-vim'
let g:rufo_auto_formatting = 1

" Rust
Plug 'rust-lang/rust.vim'
filetype plugin indent on

"Zen
Plug 'junegunn/goyo.vim'

" Ruby Specific
Plug 'vim-ruby/vim-ruby'

" Todo-ish specific
Plug 'oberblastmeister/neuron.nvim'


" Initialize plugin system
call plug#end()

" packadd! dracula
" syntax enable
colorscheme gruvbox


let mapleader=" "

" Resize Keymap
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <Leader>( :resize -5<CR>
nnoremap <Leader>) :resize +5<CR>
nnoremap <leader>pv :Ex<CR>

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Esc alternative
inoremap jj <Esc>

" Terminal remaps
tnoremap jj <C-\><C-n>

" Session maps
" Prefered sessions
let g:sessions_dir = '~/vim-sessions'
" remap to save
exec 'nnoremap <Leader>ss :mks! ' . g:sessions_dir . '/'
" remap load
exec 'nnoremap <Leader>sr :so ' . g:sessions_dir . '/'
