" show line numbers
set number
" show the relative line number for each line
set relativenumber
" number of screen lines to show around the cursor
set scrolloff=12
" set tabs to have 4 spaces
set tabstop=4
" indent when moving to the next line while writing code
set autoindent
" if non-zero, number of spaces to insert for a <Tab> 
set softtabstop=4
" expand tabs into spaces 
set expandtab
" expand <Tab> to spaces in Insert mode
set expandtab
" do clever autoindenting
set smartindent
" while using in normal mode the <shift>>> or <shift><< commands, shift lines by 4 paces
set shiftwidth=4
" specific to .js file format
" RUN :set ft? (in order to get the filetype name)
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=0 expandtab
autocmd FileType typescriptreact setlocal shiftwidth=2 tabstop=2 softtabstop=0 expandtab
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=0 expandtab
autocmd FileType scss setl iskeyword+=@-@
"autocmd FileType typescript setlocal shiftwidth=2 tabstop=2 softtabstop=0 expandtab
" show a visual line under the cursor's current line
"set cursorline
" show the matching part of the pair for [] {} and ()
set showmatch
" don't wrap a text from the end of a screen
set nowrap
" in search mode literal look for upper or lower case
set smartcase
" TextEdit might fail if hidden is not set.
set hidden
" highlight while searching for character
set incsearch
" show (partial) command in the last line of the screen. 
set showcmd
" set gui cursor from bar to block
set guicursor= 
" enable mouse
set mouse=a
" updated edited file automaticly
set autoread
" disable folding of lines
set nofoldenable




" disable screen blinking
set belloff=all


" backspace option (need)
set backspace=indent,eol,start


" disable *.swp files
set noswapfile


" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes


" display the line
set laststatus=2
" does not show -- INSERT --
set noshowmode


" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
