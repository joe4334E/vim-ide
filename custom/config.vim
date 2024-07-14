" =============================================================================
" INDENTLINE
" =============================================================================

let g:indentLine_char = '||'
let g:indentLine_fileTypeExclude = [ 'startify' ]
" let g:indentLine_setColors = 0
" let g:indentLine_char_list = ['|', '¦', '┆', '┊']
" let g:indentLine_char = '·'
" let g:indentLine_leadingSpaceEnabled = 1
" let g:indentLine_leadingSpaceChar = '·'

" =============================================================================
" COC
" =============================================================================
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver', 'coc-vetur', 'coc-flutter', 'coc-yank', 'coc-tslint-plugin', 'coc-snippets', 'coc-svelte']


" Mappings Go To's
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gR <Plug>(coc-references)

" Mappings Completion
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Mappings Diagnostics
nnoremap <silent> d[ <Plug>(coc-diagnostic-prev)
nnoremap <silent> d] <Plug>(coc-diagnostic-next)

" Mappings Hover Documentation
nnoremap <silent> K :call ShowDocumentation()<CR>

" Mappings Code Actions
nnoremap ga <Plug>(coc-codeaction-cursor)

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" =============================================================================
" INDENTLINE
" =============================================================================
" =============================================================================
" VIM-STARTIFY
" =============================================================================
" Configuración de Startify
"let g:startify_files_number = 8
"let g:startify_padding_left = 3
"let g:webdevicons_enable_startify = 1
"let g:startify_session_delete_buffers = 1 " Eliminar todos los buffers al cargar o cerrar una sesión, ignorar buffers no guardados
"let g:startify_session_remove_lines = ['setlocal', 'winheight'] " Eliminar líneas que coincidan con alguno de los patrones de esta lista del archivo de sesión
"let g:startify_session_sort = 1 " Ordenar sesiones por nombre o por tiempo de modificación
"let g:startify_update_oldfiles = 1
"let g:startify_change_to_dir = 1 " Cambiar al directorio del archivo o marcador al abrirlo
"let g:startify_fortune_use_unicode = 1 " Utilizar símbolos unicode para la fortuna
"let g:startify_session_sort = 1 " Ordenar sesiones por nombre o por tiempo de modificación

" Configuración de bookmarks
"let g:startify_bookmarks = [
      \ {               'd': '~/Documentos/algoritmos'},
      \ {               'w': '~/APP'},
      \ {               'c': '~/.vimrc'},
      \ {               's': '~/.config/kitty/kitty.conf'},
      \ {               'z': '~/.zshrc'}
      \ ]

" Encabezado personalizado centrado
let g:startify_custom_header = [
      \ '                               ██╗   ██╗      ██╗██████╗ ███████╗',
      \ '                               ██║   ██║      ██║██╔══██╗██╔════╝',
      \ '                               ██║   ██║█████╗██║██║  ██║█████╗  ',
      \ '                               ╚██╗ ██╔╝╚════╝██║██║  ██║██╔══╝  ',
      \ '                                ╚████╔╝       ██║██████╔╝███████╗',
      \ '                                 ╚═══╝        ╚═╝╚═════╝ ╚══════╝',
      \ ]

"Función para formatear las entradas de Startify
function! StartifyEntryFormat()
  return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction

" Listas centradas en Startify
"let g:startify_lists = [
      \ { 'type': 'bookmarks', 'header': [" <U+F02E> Bookmarks"] },
      \ { 'type': 'files',     'header': [" <U+F15B> MRU Files"] },
      \ { 'type': 'dir',       'header': [" <U+F07C> MRU Files in ". getcwd()] },
      \ { 'type': 'commands',  'header': [" <U+F121> Commands"] },
      \ ]

" Deshabilitar listas en Startify
let g:startify_lists = []

" Deshabilitar footer
let g:startify_custom_footer = []

" Deshabilitar elementos vacíos y 'quit' en Startify
"let g:startify_enable_special = 0

" No mostrar buffer vacío ni la opción de 'quit'
"let g:startify_disable_at_vimenter = 1
