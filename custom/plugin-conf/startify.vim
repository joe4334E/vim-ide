" =============================================================================
" VIM-STARTIFY
" =============================================================================
" Configuración de Startify
let g:startify_files_number = 8
let g:startify_padding_left = 3
let g:webdevicons_enable_startify = 1
let g:startify_session_delete_buffers = 1 " Eliminar todos los buffers al cargar o cerrar una sesión, ignorar buffers no guardados
let g:startify_session_remove_lines = ['setlocal', 'winheight'] " Eliminar líneas que coincidan con alguno de los patrones de esta lista del archivo de sesión
let g:startify_session_sort = 1 " Ordenar sesiones por nombre o por tiempo de modificación
let g:startify_update_oldfiles = 1
let g:startify_change_to_dir = 1 " Cambiar al directorio del archivo o marcador al abrirlo
let g:startify_fortune_use_unicode = 1 " Utilizar símbolos unicode para la fortuna
let g:startify_session_sort = 1 " Ordenar sesiones por nombre o por tiempo de modificación

" Configuración de bookmarks
let g:startify_bookmarks = [
    \ {				'd': '~/Documentos/algoritmos'},
    \ {				'w': '~/APP'},
    \ {				'c': '~/.vimrc'},
    \ {				's': '~/.config/kitty/kitty.conf'},
    \ {				'z': '~/.zshrc'}
    \ ]

" Encabezado personalizado centrado
let g:startify_custom_header = [
    \ '                         	██╗   ██╗      ██╗██████╗ ███████╗',
    \ '                         	██║   ██║      ██║██╔══██╗██╔════╝',
    \ '                         	██║   ██║█████╗██║██║  ██║█████╗  ',
    \ '                         	╚██╗ ██╔╝╚════╝██║██║  ██║██╔══╝  ',
    \ '                         	 ╚████╔╝       ██║██████╔╝███████╗',
    \ '                         	  ╚═══╝        ╚═╝╚═════╝ ╚══════╝',
    \ ]

" Función para formatear las entradas de Startify
function! StartifyEntryFormat()
    return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction

" Listas centradas en Startify
let g:startify_lists = [
    \ { 'type': 'bookmarks', 'header': ["  Bookmarks"] },
    \ { 'type': 'files',     'header': ["  MRU Files"] },
    \ { 'type': 'dir',       'header': ["  MRU Files in ". getcwd()] },
    \ { 'type': 'commands',  'header': ["  Commands"] },
    \ ]

