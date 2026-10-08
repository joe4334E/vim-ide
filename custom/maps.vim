let mapleader = "\<Space>"

"A-GENERAL
nnoremap <C-s> :w<CR>
nnoremap <C-q> :q<CR>
nnoremap <leader>ai :execute "normal! mzgg=G'z"<CR>

"B-NAVEGACION
nnoremap <C-p> :FZF<CR>
nnoremap <C-b> :Buffers<CR>
nnoremap <C-f> :Ag<CR>
nnoremap <leader>e :NERDTreeToggle<CR>

"C-COLORES
nnoremap <leader>p  :NextColorScheme<CR>
nnoremap <leader>n  :PrevColorScheme<CR>
nnoremap <C-r>      :RandomColorScheme<CR>
nnoremap <C-c>      :Colors<CR>

"D-GOYO
nnoremap <leader>g  :Goyo<CR>

"E-TERMINAL
nnoremap <leader>t :FloatermToggle<CR>
nnoremap <C-t> :FloatermToggle<CR>
tnoremap <leader>t <C-\><C-n>:FloatermToggle<CR>
tnoremap <Esc> <C-\><C-n>
nnoremap <leader>sP :FloatermNew --autoclose=0 presenterm -xX %<CR>

"F-NAVEGACION VENTANAS
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"G-SPLITS
nnoremap <leader>sv :vsplit<CR>
nnoremap <leader>sh :split<CR>
nnoremap <leader>sd :close<CR>

"J-markdown preview
nnoremap <leader>mp :MarkdownPreview<CR>
