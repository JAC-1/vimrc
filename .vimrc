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
set encoding=utf-8
set nohlsearch

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'tweekmonster/gofmt.vim'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'mbbill/undotree'
Plug 'tpope/vim-dispatch'
Plug 'theprimeagen/vim-be-good'
Plug 'gruvbox-community/gruvbox'
Plug 'tpope/vim-projectionist'
Plug 'szw/vim-maximizer'
" Plug 'Valloric/YouCompleteMe'
Plug 'othree/xml.vim'
Plug 'frazrepo/vim-rainbow'
" Icons
Plug 'ryanoasis/vim-devicons'
" Fuzzy search
Plug 'ctrlpvim/ctrlp.vim'

"Zen
Plug 'junegunn/goyo.vim'

" Python Speciic
Plug 'sansyrox/vim-python-virtualenv'
" Ruby Specific
Plug 'vim-ruby/vim-ruby'

" Todo-ish specific
Plug 'oberblastmeister/neuron.nvim'

" Autocomplete
" Run git clone --depth 1 https://github.com/codota/tabnine-vim
set rtp+=~/tabnine-vim
    

" NerdTree and the horse you rode in on ...
Plug 'preservim/nerdtree'
Plug 'vim-utils/vim-man'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'


" Initialize plugin system
call plug#end()

" packadd! dracula
" syntax enable
" colorscheme dracula
colorscheme gruvbox
set background=dark

if executable('rg')
    let g:rg_derive_root='true'
endif

let mapleader=" "
"let g:netrw_browse_split=2
"let g:netrw_banner = 0
"let g:netrw_winsize = 25


nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
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


