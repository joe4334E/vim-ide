" Author        : ale
" Created       : 23/11/2024
" License       : MIT
" Description   : 
" =============================================================================
" INDENTLINE
" =============================================================================
let g:indentLine_char = '||'
let g:indentLine_fileTypeExclude = ['startify']
" let g:indentLine_setColors = 0
" let g:indentLine_char_list = ['|', '¦', '┆', '┊']
" let g:indentLine_char = '·'
" let g:indentLine_leadingSpaceEnabled = 1
" let g:indentLine_leadingSpaceChar = '·'

" =============================================================================
" COC
"=============================================================================
" Mapeo de <TAB> para autocompletado

" use <tab> to trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
" use <c-space> for trigger completion
inoremap <silent><expr> <c-space> coc#refresh()
" Use <C-@> on vim
inoremap <silent><expr> <c-@> coc#refresh()
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"

" =============================================================================
" VIM-STARTIFY
" =============================================================================
" Configuración de Startify
let g:startify_files_number = 8
let g:startify_padding_left = 3
let g:webdevicons_enable_startify = 1
let g:startify_session_delete_buffers = 1
let g:startify_session_remove_lines = ['setlocal', 'winheight']
let g:startify_session_sort = 1
let g:startify_update_oldfiles = 1
let g:startify_change_to_dir = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_sort = 1

" Configuración de bookmarks
let g:startify_bookmarks = [
      \ { 'd': '~/Documentos/algoritmos'},
      \ { 'w': '~/APP'},
      \ { 'c': '~/.vimrc'},
      \ { 's': '~/.config/kitty/kitty.conf'},
      \ { 'z': '~/.zshrc'}
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
let g:startify_lists = [
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

" =============================================================================
" SILICON
" =============================================================================
let g:silicon = {
      \   'theme':              'Dracula',
      \   'font':               'Iosevka',
      \   'background':         '#AAAAFF',
      \   'shadow-color':       '#555555',
      \   'line-pad':           2,
      \   'pad-horiz':          80,
      \   'pad-vert':           100,
      \   'shadow-blur-radius': 0,
      \   'shadow-offset-x':    0,
      \   'shadow-offset-y':    0,
      \   'line-number':        v:true,
      \   'round-corner':       v:true,
      \   'window-controls':    v:true,
\ }

let g:silicon['output'] = '~/Imágenes/code/silicon-{time:%Y-%m-%d-%H%M%S}.png'

