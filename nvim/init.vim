


" set up default <leader> key
let mapleader = " "



"+++++[VIM KEY MAPPING]+++++
" file navigation column
nnoremap <leader>na :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
" open terminal
nnoremap <leader>te :wincmd v<bar> :wincmd l <bar> :terminal<CR><C-w><C-w> :q<bar><CR>
" replace a word
nnoremap <leader>re :%s/<c-r><c-w>/<c-r><c-w>/gc<c-f>$F/i
" copy to system
"vnoremap <C-c> "*y
" creating windows
"nnoremap <> :wincmd v<bar><CR>
"nnoremap <> :wincmd S<bar><CR>
" switching between windows
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
" switch between tabs faster and simple.
nnoremap <Space>h :tabprevious<CR>
nnoremap <Space>l :tabnext<CR>
" create and open a new tab.
nnoremap <Space>t :tabnew<CR>
" go to tab by number.
noremap <Space>1 1gt
noremap <Space>2 2gt
noremap <Space>3 3gt
noremap <Space>4 4gt
noremap <Space>5 5gt
noremap <Space>6 6gt
noremap <Space>7 7gt
noremap <Space>8 8gt
noremap <Space>9 9gt
noremap <Space>0 :tablast<CR>


"+++++[VIM PLUGINS]+++++
" specify a directory for plugins
"
" RUN :so % AND THEN :PlugInstall

call plug#begin('~/.vim/plugged')
" themes
Plug 'https://github.com/sainnhe/sonokai.git'
Plug 'https://github.com/morhetz/gruvbox.git'
" syntax highlighting
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'thesis/vim-solidity'
" lightline
Plug 'itchyny/lightline.vim'
" autocomplition
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" LSP
"Plug 'neovim/nvim-lspconfig'
"Plug 'williamboman/nvim-lsp-installer'
"Plug 'nvim-lua/completion-nvim'
" telescope requirements...
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
" in order to be able to see images
Plug 'nvim-telescope/telescope-media-files.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
" nerdtree
"Plug 'preservim/nerdtree'
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
""Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'ryanoasis/vim-devicons'
call plug#end()
