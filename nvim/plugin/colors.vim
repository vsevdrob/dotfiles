"
" THEMES
"


" colorscheme
colorscheme gruvbox
"colorscheme sonokai


"
" THEME settings
"


let g:sonokai_style = 'espresso'
let g:sonokai_enable_italic = 0
let g:sonokai_disable_italic_comment = 0
let g:gruvbox_contrast_dark = 'hard'
" lightline settings
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ }
" background highlight
highlight Normal guibg=none
hi ColorColumn ctermbg=1 
" terminal colors
"set termguicolors
" highlight a column (80 spaces)
set colorcolumn=80
set background=dark


"
" LANGUAGE highlighting
"


" enable syntax highlighting 
syntax enable
" enable all Python syntax highlighting features
let python_highlight_all = 1
