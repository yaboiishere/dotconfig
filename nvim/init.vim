" if empty(glob(data_dir . '/autoload/plug.vim'))
"  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
"  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
" endif

call plug#begin()
Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'easymotion/vim-easymotion'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neovim/nvim-lspconfig'
call plug#end()

nnoremap <SPACE> <Nop>
let mapleader = ' '
let g:mapleader = ' '
let g:maplocalleader = ','
let g:EasyMotion_do_mapping = 0
let g:sneak#label = 1

map <leader> <Plug>(easymotion-prefix)
nmap <leader>s <Plug>(easymotion-s2)
vmap <leader>s <Plug>(easymotion-s2)

nmap / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
" Stop highlighting on Enter
map <CR> :noh<CR>

set number
set relativenumber

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
