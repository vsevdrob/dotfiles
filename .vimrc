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


"+++++[VIM KEY MAPPING]+++++
" file navigation column
nnoremap <leader>na :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
" open terminal
nnoremap <leader>te :wincmd v<bar> :wincmd l <bar> :terminal<CR><C-w><C-w> :q<bar><CR>
" replace a word
nnoremap <leader>re :%s/<c-r><c-w>/<c-r><c-w>/gc<c-f>$F/i
" switch between tabs faster and simple.
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
" create and open a new tab.
nnoremap <C-t> :tabnew<CR>
" go to tab by number.
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<CR>

"+++++[VIM SETTINGS]+++++
" jumps to search word as you type
set incsearch
" show (partial) command in the last line of the screen.
set showcmd
" if non-zero, number of spaces to insert for a <Tab>
set softtabstop=4
" columns to highlight
"set colorcolumn=80
"hi ColorColumn ctermbg=1 guibg=lightgrey
" expand <Tab> to spaces in Insert mode
set expandtab
" do clever autoindenting
set smartindent
" override 'ignorecase' when pattern has upper case characters
set smartcase
" show the relative line number for each line
set relativenumber
" number of screen lines to show around the cursor
set scrolloff=8
" disable screen blinking
set belloff=all
