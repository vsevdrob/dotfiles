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

