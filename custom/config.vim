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
" COC SETTINGS
" =============================================================================
"CoC Settings
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
			\ pumvisible() ? "\<C-n>" :
			\ <SID>check_back_space() ? "\<TAB>" :
			\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
			\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
"Ultisnips Settings
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"coc-snippets Settings
inoremap <silent><expr> <TAB>
			\ coc#pum#visible() ? coc#_select_confirm() :
			\ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
			\ CheckBackspace() ? "\<TAB>" :
			\ coc#refresh()
"
"function! CheckBackspace() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~# '\s'
"endfunction
"
"let g:coc_snippet_next = '<tab>'
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

