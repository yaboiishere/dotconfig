" if empty(glob(data_dir . '/autoload/plug.vim'))
"  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
"  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
" endif

call plug#begin()
Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'

Plug 'easymotion/vim-easymotion'
Plug 'github/copilot.vim'

"Files interaction
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

"Display some stuff
Plug 'kevinhwang91/nvim-bqf'

" LSP
" Plug 'neovim/nvim-lspconfig'
" Plug 'williamboman/mason.nvim'
" Plug 'williamboman/mason-lspconfig.nvim'
" Plug 'williamboman/nvim-lsp-installer'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Completion engine
" Plug 'hrsh7th/nvim-cmp'
" Plug 'hrsh7th/cmp-nvim-lsp'
" Plug 'hrsh7th/cmp-buffer'
" Plug 'hrsh7th/cmp-path'

" Snippets
" Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
call plug#end()

"File Interaction fzf
let g:fzf_buffers_jump = 1

" Map Leader
nnoremap <SPACE> <Nop>
let mapleader = ' '
let g:mapleader = ' '
let g:maplocalleader = ','
let g:EasyMotion_do_mapping = 0
let g:sneak#label = 1

"Set leader s to easymotion"
map <leader> <Plug>(easymotion-prefix)
nmap <leader>s <Plug>(easymotion-s2)
vmap <leader>s <Plug>(easymotion-s2)

"Set / search to use easymotion
nmap / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" Stop highlighting on Enter
map <CR> :noh<CR>

"Set ruler
set number
set relativenumber

" NerdTree mappings
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Fzf
map <C-p> :Files<CR>
map <C-g> :GFiles<CR>
map <leader>ff :Files<CR>
map <leader>fF :Files!<CR>
map <leader>gf :GFiles<CR>
map <leader>gF :GFiles!<CR>
map <leader>gc :GFiles?<CR>
"map <C-b> :Buffers<CR>
map <leader>bb :Buffers<CR>
map <leader>bB :Buffers!<CR>
map <leader>cf :Commits<CR>
map <leader>cF :Commits!<CR>

" Expansions
"
" %% expands to current path, all thanks to Gary Bernhardt & Drew Neil
" See: http://vimcasts.org/episodes/the-edit-command/
cnoremap %% <C-R>=fnameescape(expand('%:p:h'))."/"<CR>
" %rc expands to vimrc
cnoremap %rc ~/.config/nvim/init.vim
cnoremap %ll ~/.config/nvim/lua/config.lua

source ~/.config/nvim/coc.vim
" lua require("config")
