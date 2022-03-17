syntax on

set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
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
set list lcs=tab:\|\
set t_Co=256
set colorcolumn=80

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Plug 'jiangmiao/auto-pairs'
" fzf
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

"emmet
Plug 'mattn/emmet-vim'

Plug 'tpope/vim-commentary'
Plug 'Yggdroot/indentLine'
Plug 'tweekmonster/gofmt.vim'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'mbbill/undotree'
Plug 'tpope/vim-dispatch'
Plug 'theprimeagen/vim-be-good'
Plug 'flazz/vim-colorschemes'
Plug 'sainnhe/sonokai'
" Plug 'Valloric/YouCompleteMe'
Plug 'othree/xml.vim'
Plug 'frazrepo/vim-rainbow'
" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1
let g:airline_theme='sonokai'
" LSP?
Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'
" Colorscheme Packs
" Gruvbox
" Plug 'gruvbox-community/gruvbox'
" let g:gruvbox_italic = 1
" let g:gruvbox_contrast_dark = 'medium'


" Sonokai
if has('termguicolors')
  set termguicolors
endif
let g:sonokai_style = "andromeda"
let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 1
let g:sonokai_transparent_background = 1
let g:sonokai_cursor = "auto"

" " Deoplete
" if has('nvim')
"   Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" else
"   Plug 'Shougo/deoplete.nvim'
"   Plug 'roxma/nvim-yarp'
"   Plug 'roxma/vim-hug-neovim-rpc'
" endif
" let g:deoplete#enable_at_startup = 1
"
"COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}
set cmdheight=2
set updatetime=300
set shortmess+=c
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
<col style="" span="">
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif


" formater
Plug 'chiel92/vim-autoformat'
au BufWrite * :Autoformat

" Ruby
Plug 'vim-ruby/vim-ruby'
Plug 'ruby-formatter/rufo-vim'
let g:rufo_auto_formatting = 1

" Processing
Plug 'sophacles/vim-processing'

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

" fzf maps
nmap <C-p> :Files<CR>
nmap <C-e> :Buffers<CR>
let g:fzf_action = { 'ctrl-e': 'edit' }

" emmet maps
let g:user_emmet_leader_key=','

" Session maps
" Prefered sessions
let g:sessions_dir = '~/vim-sessions'
" remap to save
exec 'nnoremap <Leader>ss :mks! ' . g:sessions_dir . '/'
" remap load
exec 'nnoremap <Leader>sr :so ' . g:sessions_dir . '/'


