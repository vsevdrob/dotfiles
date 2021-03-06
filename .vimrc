"+++++[PYTHON SETTINGS]+++++
" enable syntax highlighting 
syntax enable
" show line numbers
set number
" set tabs to have 4 spaces
set tabstop=4
" indent when moving to the next line while writing code
set autoindent
" expand tabs into spaces 
set expandtab
" when using the >> or << commands, shift lines by 4 paces
set shiftwidth=4
" show a visual line under the cursor's current line
"set cursorline
" show the matching part of the pair for [] {} and ()
set showmatch
" enable all Python syntax highlighting features
let python_highlight_all = 1
" don't appear on the next line from the end of a screen
set nowrap


"+++++[VIM SETTINGS]+++++
" undefined
set smartcase
set incsearch
set hidden
" jumps to search word as you type
set incsearch
" show (partial) command in the last line of the screen. 
set showcmd
" if non-zero, number of spaces to insert for a <Tab> 
set softtabstop=4
" columns to highlight
"set colorcolumn=80
hi ColorColumn ctermbg=1 guibg=lightgrey
" expand <Tab> to spaces in Insert mode
set expandtab
" do clever autoindenting
set smartindent
" override 'ignorecase' when pattern has upper case characters
set smartcase
" show the relative line number for each line
set relativenumber
" number of screen lines to show around the cursor
set scrolloff=12
" disable screen blinking
set belloff=all
" backspace option (need)
set backspace=indent,eol,start


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
call plug#begin('~/.vim/plugged')
" plugins
" autocomplition
Plug 'https://github.com/ycm-core/YouCompleteMe.git'
" themes
Plug 'https://github.com/sainnhe/sonokai.git'
Plug 'https://github.com/morhetz/gruvbox.git'
"Plug 'https://github.com/arcticicestudio/nord-vim.git'
"Plug 'edkolev/tmuxline.vim'
" syntax for Solidity language
Plug 'thesis/vim-solidity'
" syntax for go language
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" nerdtree
Plug 'preservim/nerdtree'
" lightline
Plug 'itchyny/lightline.vim'
" vim-airline
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
" fzf 
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug '/usr/local/opt/fzf'
" initialize plugin system
call plug#end()

" ++ [nerdtree] ++
" just open
nnoremap <C-n> :NERDTree<CR>
" open/close
nnoremap <C-t> :NERDTreeToggle<CR>
" find the current file
nnoremap <C-f> :NERDTreeFind<CR>
" open a file in a new tab
let NERDTreeMapOpenInTab='<ENTER>'
" exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" pen the existing NERDTree on each new tab.
"autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

" ++ [theme] ++
" setting up installed theme for vim
" Important!!
"if has('termguicolors')
"  set termguicolors
"endif
" The configuration options should be placed before `colorscheme sonokai`.
let g:sonokai_style = 'espresso'
let g:sonokai_enable_italic = 0
let g:sonokai_disable_italic_comment = 0
colorscheme gruvbox
set background=dark

" ++ [lightline] ++
" display the line
set laststatus=2
" does not show -- INSERT --
set noshowmode
" colorscheme for lightline
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ }
"let g:airline_theme='gruvbox'
"let g:airline#extensions#tabline#enabled = 1

"let g:tmuxline_theme = 'gruvbox'
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '>'

" fzf
set rtp+=/usr/local/opt/fzf
