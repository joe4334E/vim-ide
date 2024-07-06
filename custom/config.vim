" =============================================================================
" VIM-STARTIFY
" =============================================================================
let g:startify_files_number = 8
" let g:startify_session_autoload = 1
let g:startify_padding_left = 3
let g:webdevicons_enable_startify = 1
let g:startify_session_delete_buffers = 1 " delete all buffers when loading or closing a session, ignore unsaved buffers
let g:startify_session_remove_lines = ['setlocal', 'winheight'] " lines matching any of the patterns in this list, will be removed from the session file
let g:startify_session_sort = 1 " sort sessions by alphabet or modification time
let g:startify_update_oldfiles = 1
let g:startify_change_to_dir = 1 " when opening a file or bookmark, change to its directory
let g:startify_fortune_use_unicode = 1 " beautiful symbols
" let g:startify_padding_left = 3 " the number of spaces used for left padding
let g:startify_session_sort = 1 " sort sessions by alphabet or modification time"
let g:startify_bookmarks = [
			\ {'d': '~/Documentos/algoritmos'},
			\ {'w': '~/APP'},
			\ {'c': '~/.vimrc'},
			\ {'s': '~/.config/kitty/kitty.conf'},
			\ {'z': '~/.zshrc'}
			\ ]
let g:startify_custom_header = [
			\' ██╗   ██╗      ██╗██████╗ ███████╗',
			\' ██║   ██║      ██║██╔══██╗██╔════╝',
			\' ██║   ██║█████╗██║██║  ██║█████╗  ',
			\' ╚██╗ ██╔╝╚════╝██║██║  ██║██╔══╝  ',
			\'  ╚████╔╝       ██║██████╔╝███████╗',
			\'   ╚═══╝        ╚═╝╚═════╝ ╚══════╝',
			\ ]
let g:startify_lists = [
			\ { 'type': 'bookmarks', 'header': ["  Bookmarks"]      },
			\ { 'type': 'files',     'header': ["  MRU Files"]            },
			\ { 'type': 'dir',       'header': ["  MRU Files in ". getcwd()] },
			\ { 'type': 'commands',  'header': ["  Commands"]       },
			\ ]

function! StartifyEntryFormat()
	return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction

" =============================================================================
" INDENTLINE
" =============================================================================

let g:indentLine_char = '|'
let g:indentLine_fileTypeExclude = [ 'startify' ]
" let g:indentLine_setColors = 0
" let g:indentLine_char_list = ['|', '¦', '┆', '┊']
" let g:indentLine_char = '·'
" let g:indentLine_leadingSpaceEnabled = 1
" let g:indentLine_leadingSpaceChar = '·'

" =============================================================================
" COC
" =============================================================================
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif
" Mapeo de <Tab> para completar según la visibilidad de la lista de sugerencias
inoremap <expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

" Mapeo de <S-Tab> para completar según la visibilidad de la lista de sugerencias
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<C-h>"

" Mapeo de <CR> para seleccionar la sugerencia y cerrar la lista de sugerencias
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
