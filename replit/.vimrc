syntax on 

" set noerrorbells
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
set encoding=utf-8
set nohlsearch
set mouse=a
set clipboard=unnamed
set list lcs=tab:\|\ 

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
Plug 'theprimeagen/vim-be-good'
Plug 'gruvbox-community/gruvbox'
Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-projectionist'
Plug 'szw/vim-maximizer'
Plug 'sainnhe/sonokai'
" JS
Plug 'pangloss/vim-javascript'
Plug 'othree/xml.vim'
Plug 'frazrepo/vim-rainbow'

" Icons
Plug 'ryanoasis/vim-devicons'
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
    

" NerdTree and the horse you rode in on ...
Plug 'preservim/nerdtree'
Plug 'vim-utils/vim-man'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'


" Initialize plugin system
call plug#end()

" packadd! dracula
" syntax enable
let g:sonokai_style = "andromeda"
let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 1
colorscheme sonokai


let mapleader=" "
"let g:netrw_browse_split=2
"let g:netrw_banner = 0
"let g:netrw_winsize = 25


nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <Leader>( :resize -5<CR>
nnoremap <Leader>) :resize +5<CR>
nnoremap <leader>pv :Ex<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>z :Goyo<CR>

"" Exit Vim if NERDTree is the only window left.
"autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
"    \ quit | endif


" Open on right
let g:NERDTreeWinPos = "right"
" Resize
let g:NERDTreeWinSize=40


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

