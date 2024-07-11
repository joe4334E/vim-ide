"Configurar la tecla de espacio como líder
let mapleader = "\<Space>"

nnoremap <C-s> :w<CR>
nnoremap <C-q> :q<CR>


" Abrir y cerrar NERDTree con <space>e
nnoremap <leader>e :NERDTreeToggle<CR>
" Abrir y cerrar TAGBAR con <space>a
nnoremap <leader>a :TagbarToggle<CR>
" Pasar al siguiente esquema de color con <space>p
nnoremap <leader>p :NextColorScheme<CR>

" Pasar al esquema de color anterior con <space>n
nnoremap <leader>n :PrevColorScheme<CR>

" Pasar a un esquema de color aleatorio con <space>r
nnoremap <leader>r :RandomColorScheme<CR>

let g:floaterm_keymap_new = '<leader>ft'
let g:floaterm_keymap_toggle = '<leader>t'


" Pasar a modo editor de tablas en makdown con '<space>y'
nnoremap <leader>y :TableModeEnable<CR>
