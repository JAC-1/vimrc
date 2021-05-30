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

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'tweekmonster/gofmt.vim'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'tpope/vim-dispatch'
Plug 'theprimeagen/vim-be-good'
Plug 'gruvbox-community/gruvbox'
Plug 'tpope/vim-projectionist'
Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer'
" Plug 'Valloric/YouCompleteMe'
Plug 'git@github.com:kien/ctrlp.vim.git'
Plug 'turbio/bracey.vim'
Plug 'othree/xml.vim'
Plug 'vim-ctrlspace/vim-ctrlspace'
Plug 'frazrepo/vim-rainbow'

" Python Speciic
Plug 'sansyrox/vim-python-virtualenv'

" Todo-ish specific
Plug 'oberblastmeister/neuron.nvim'

" Autocomplete
" Run git clone --depth 1 https://github.com/codota/tabnine-vim
set rtp+=~/tabnine-vim
    
" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'



" NerdTree and the horse you rode in on ...
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'


" Initialize plugin system
call plug#end()

colorscheme gruvbox
set background=dark

if executable('rg')
    let g:rg_derive_root='true'
endif

let mapleader=" "
let g:netrw_browse_split=2
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:ctrlp_use_cashing = 0

nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <leader>pv :Ex<CR>
nnoremap <leader>b :Bracey<CR>
nnoremap <leader>bs :BraceyStop<CR>
nnoremap <leader>br :BraceyReload<CR>
nnoremap <leader>n :NERDTreeToggle<CR>

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" Resize NERDTree 
let g:NERDTreeWinSize=10

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Esc alternative
inoremap jj <Esc>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
