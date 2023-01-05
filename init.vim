set exrc
set guicursor=
set relativenumber
set nu
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set noshowmode
set completeopt=menuone,noinsert,noselect
set signcolumn=yes
" Give moer space for dispalying messages.
set cmdheight=2
set so=8
set updatetime=50

" Don't pass message to |ins-completion-menu|.
set shortmess+=c

set colorcolumn=80


call plug#begin('~/.config/nvim/plugged')
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'f-person/git-blame.nvim'
Plug 'kdheepak/lazygit.nvim'
Plug 'sindrets/diffview.nvim'
Plug 'windwp/nvim-autopairs'
Plug 'honza/vim-snippets'
Plug 'digitaltoad/vim-pug'



call plug#end()

colorscheme tokyonight-moon 
"Global extensions
"let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-emmet', 'coc-tslint', 'coc-prettier']
let mapleader = " "
" nerdtree
nnoremap <leader>n :NERDTreeFind<CR>

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes
lua require('lanvim')
