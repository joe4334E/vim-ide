" Author: ale | 2024-11-23 | MIT

" ========== [0] WILDMENU — POPUP FLOTANTE EN : y / ==========

set wildmenu
set wildmode=longest:full,full
set wildoptions=pum

" ========== [1] COC — COMPLETADO Y NAVEGACIÓN ==========

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
      \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction



if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> K :call ShowDocumentation()<CR>
function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')

nmap <leader>rn <Plug>(coc-rename)
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>ac  <Plug>(coc-codeaction-cursor)
nmap <leader>as  <Plug>(coc-codeaction-source)
nmap <leader>qf  <Plug>(coc-fix-current)

nmap <silent> <leader>re <Plug>(coc-codeaction-refactor)
xmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)
nmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)

nmap <leader>cl  <Plug>(coc-codelens-action)

xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"

nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

command! -nargs=0 Format :call CocActionAsync('format')
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

" ========== [2] COC EXTENSIONES ==========

let g:coc_global_extensions = [
      \ 'coc-snippets',
      \ 'coc-html',
      \ 'coc-css',
      \ 'coc-json',
      \ 'coc-emmet',
      \ 'coc-tsserver',
      \ 'coc-tailwindcss',
      \ 'coc-prettier',
      \ 'coc-eslint',
      \ 'coc-dictionary',
      \ 'coc-markdownlint',
      \ ]

" ========== [3] COC-DICTIONARY (español) DEPRECATED ==========

let g:coc_dictionary_settings = {
      \ 'filetypes': ['markdown', 'typst', 'text'],
      \ 'dictionary': expand('~/.vim/custom/es-wordlist.txt'),
      \ }

" ========== [4] SPELL ESPAÑOL (.md/.typ/.txt) ==========

augroup WritingMode
  autocmd!
  autocmd FileType markdown,typst,text setlocal spell spelllang=es,en
  autocmd FileType markdown,typst,text setlocal wrap linebreak
  autocmd FileType markdown,typst,text setlocal complete+=kspell
augroup END

" ========== [5] HISTORIAL Y UNDO ==========

set history=1000
set undofile
set undodir=~/.vim/undodir
if !isdirectory(&undodir)
    call mkdir(&undodir, 'p')
endif

" ========== [6] STARTIFY ==========

let g:startify_files_number = 8
let g:startify_padding_left = 3
let g:webdevicons_enable_startify = 0
let g:startify_session_delete_buffers = 1
let g:startify_session_remove_lines = ['setlocal', 'winheight']
let g:startify_session_sort = 1
let g:startify_update_oldfiles = 1
let g:startify_change_to_dir = 1
let g:startify_fortune_use_unicode = 1
let g:startify_enable_special = 0

let g:startify_bookmarks = [
      \ { 'd': '~/Documentos/algoritmos'},
      \ { 'w': '~/APP'},
      \ { 'c': '~/.vimrc'},
      \ { 's': '~/.config/kitty/kitty.conf'},
      \ { 'z': '~/.zshrc'}
      \ ]

let g:startify_custom_header = [
      \ '                               ██╗   ██╗      ██╗██████╗ ███████╗',
      \ '                               ██║   ██║      ██║██╔══██╗██╔════╝',
      \ '                               ██║   ██║█████╗██║██║  ██║█████╗  ',
      \ '                               ╚██╗ ██╔╝╚════╝██║██║  ██║██╔══╝  ',
      \ '                                ╚████╔╝       ██║██████╔╝███████╗',
      \ '                                 ╚═══╝        ╚═╝╚═════╝ ╚══════╝',
      \ ]

let g:startify_lists = [
      \ { 'type': 'bookmarks', 'header': [" Marcadores"] },
      \ { 'type': 'files',     'header': [" Recientes"] },
      \ { 'type': 'dir',       'header': [" En directorio actual: ". getcwd()] },
      \ { 'type': 'commands',  'header': [" Comandos"] },
      \ ]

" ========== [7] SILICON ==========

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

" ========== [8] VIM-ASTRO ==========

let g:astro_typescript = 'enable'
let g:astro_stylus = 'enable'

" ========== [9] ULTISNIPS ==========

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" ========== [10] TYPST ==========

function! TypstCompile()
  silent execute '!typst compile %:p > /dev/null 2>&1 &'
  redraw!
endfunction

function! TypstWatch()
  execute 'FloatermNew --disposable --autoclose=1 --title=TypstWatch typst watch ' . expand('%:p')
endfunction

augroup TypstConfig
  autocmd!
  autocmd FileType typst nnoremap <buffer> <leader>tc :call TypstCompile()<CR>
  autocmd FileType typst nnoremap <buffer> <leader>tw :call TypstWatch()<CR>
  autocmd BufWritePost *.typ call TypstCompile()
augroup END

" ========== [11] ASTRO COC ==========

function! s:setup_astro() abort
  call coc#config('html.filetypes', ['astro', 'html', 'handlebars', 'htmldjango', 'blade'])
  call coc#config('emmet.includeLanguages', {'astro': 'html'})
  call coc#config('tailwindCSS.htmlLanguages', ['astro', 'blade', 'edge', 'eelixir', 'ejs', 'elixir', 'elm', 'erb', 'eruby', 'haml', 'handlebars', 'html', 'htmldjango', 'jade', 'leaf', 'markdown', 'njk', 'nunjucks', 'php', 'razor', 'slim', 'svelte', 'twig', 'vue'])
  call coc#config('tailwindCSS.headwind.classRegex', {
        \ 'astro': "\\bclass\\s*=\\s*[\"']([_a-zA-Z0-9\\s\\-\\:\\/]+)[\"']|\\bclass:list\\s*=\\s*[\"']([_a-zA-Z0-9\\s\\-\\:\\/]+)[\"']"
        \ })
endfunction
autocmd VimEnter * call s:setup_astro()

" ========== [12] FLOATERM ==========

let g:floaterm_wintype = 'float'
let g:floaterm_width = 0.85
let g:floaterm_height = 0.7
let g:floaterm_position = 'center'
let g:floaterm_autoclose = 1
let g:floaterm_autoinsert = 1
let g:floaterm_title = ''
let g:floaterm_borderchars = '─│─│╭╮╰╯'
let g:floaterm_autohide = 1
