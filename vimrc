" =============================================================================
" VIMRC
" =============================================================================
" Modulos en ~/.vim/custom/:
"   plugins.vim  config.vim  maps.vim  writing.vim
" =============================================================================

" =============================================================================
" CONFIGURACIONES GENERALES ⚙️
" =============================================================================

"  reconoció la necesidad de números de línea! 🔢
set number

" Ratón activado, ¡para una navegación más ágil! 🖱️
set mouse=a

" Números de línea estrechos, para ahorrar espacio. 🔢
set numberwidth=1
"Wildcharm : character to use for wildmenu completion"
set wildcharm=<C-z>

" Portapapeles sin nombre, para mantener las cosas ordenadas. 📋
set clipboard=unnamed

" Mostrar comando actual, para saber siempre lo que está pasando. ℹ️
set showcmd

" Regla vertical, para no perder la noción de la columna 80. 📏
set ruler

" Resaltar línea del cursor, para una mejor visibilidad. 🔦
set cursorline

" Codificación UTF-8, para caracteres internacionales. 🌐
set encoding=utf-8

" Resaltar paréntesis coincidentes, para una mejor legibilidad. ✨
set showmatch

" Ancho de tabulación de 2 espacios, para una sangría coherente. ↔️
set sw=2

" Sangría automática, para ahorrar tiempo y esfuerzo. ⏩
set autoindent

" Números de línea relativos, para una fácil navegación. 🔢
set relativenumber

" Segunda línea de estado, para más información. ℹ️
set laststatus=2

" Ocultar modo actual, para una interfaz más limpia. 🧹
" set noshowmode
set statusline=

" =============================================================================
" SINtaxis y plugins 🔌
" =============================================================================

" Resaltado de sintaxis activado, para una mejor comprensión del código. 💡
syntax on
syntax enable

" =============================================================================
"Sources  🎉
" =============================================================================


" Source all plugin configurations in ~/.vim/custom/*.vim
" (plugins.vim, config.vim, maps.vim, writing.vim se cargan aquí)
for config in split(glob('~/.vim/custom/*.vim'), '\n')
  execute 'source' config
endfor

" =============================================================================
" COLORES Y BúSQUEDA 🔍
" =============================================================================

" Esquema de colores personalizado, para una experiencia visual agradable. 🎨
colorscheme unokai
" Resaltar coincidencias de búsqueda, para encontrar lo que necesitas rápidamente. 🔍
set hlsearch

" Búsqueda incremental, para resultados instantáneos. 🔎
set incsearch

" Ignorar mayúsculas y minúsculas en la búsqueda, para mayor flexibilidad. 🔄
set ignorecase

" Distinguir mayúsculas y minúsculas en la búsqueda, cuando la primera letra coincide. 🔠
set smartcase

" =============================================================================
" AUTOCOMANDOS 🚪
" =============================================================================

" Cerrar terminal flotante al salir de Vim, para una salida limpia. 🚪
autocmd QuitPre * FloatermKill

" =============================================================================
"Autocomandos  🎉
" =============================================================================
"autocmd VimEnter * :echo system("fortune")
"autocmd BufReadDir ~/home/ale/books/* setlocal tablemodeenable

" Autocomandos para sintaxis y semantica



" ============================================================================
" CONFIGURACIÓN BÁSICA (mínima necesaria para statusline)
" ============================================================================
set nocompatible
set laststatus=2                    " Siempre mostrar statusline
set noshowmode                      " No mostrar --INSERT--, etc (lo mostramos en statusline)
filetype plugin indent on
syntax on

" ============================================================================
" DEFINICIÓN DE COLORES PARA STATUSBAR
" ============================================================================

" Grupos de resaltado para modos
highlight StslineNormalColor ctermbg=172 ctermfg=0 guibg=#000000 guifg=#afafaf
highlight StslineInsertColor ctermbg=2 ctermfg=0 guibg=#00ff00 guifg=#000000
highlight StslineReplaceColor ctermbg=1 ctermfg=15 guibg=#ff0000 guifg=#ffffff
highlight StslineVisualColor ctermbg=3 ctermfg=0 guibg=#ffff00 guifg=#000000
highlight StslineCommandColor ctermbg=4 ctermfg=15 guibg=#0000ff guifg=#ffffff
highlight StslineTerminalColor ctermbg=240 ctermfg=15 guibg=#0000ff guifg=#000000

" Otros elementos del statusline
highlight OrangeFileIcon ctermbg=236 ctermfg=177 guibg=#FFD700 guifg=#000000
highlight StatusPercent ctermbg=0 ctermfg=15 guibg=#000000 guifg=#ffffff
highlight StatusBuffer ctermbg=236 ctermfg=220 guibg=#1E1E1E guifg=#FFCC00
highlight StatusLocation ctermbg=4 ctermfg=0 guibg=#0000ff guifg=#000000
highlight StatusModified ctermbg=0 ctermfg=5 guibg=#000000 guifg=#ff00ff
highlight StatusFilePath ctermbg=236 ctermfg=167 guibg=#2D2D2D guifg=#E06C75
highlight StatusGitColour ctermbg=28 ctermfg=0 guibg=#2BBB4F guifg=#080808
highlight StatusTabs ctermbg=236 ctermfg=150 guibg=#282C34 guifg=#98C379

" Colores para pestañas
highlight TabLineFill ctermbg=236 ctermfg=167 guibg=#000000 guifg=#ffffff
highlight TabLine ctermbg=236 ctermfg=8 guibg=#000000 guifg=#808080
highlight TabLineSel ctermbg=236 ctermfg=167 guibg=#000000 guifg=#ffffff
highlight TabLineModified ctermbg=236 ctermfg=1 guibg=#000000 guifg=#ff0000

" ============================================================================
" DEFINICIÓN DE MODOS
" ============================================================================

let g:currentmode={
      \ 'n' : 'NORMAL ',
      \ 'v' : 'VISUAL ',
      \ 'V' : 'V·Line ',
      \ "\<C-v>" : 'V·Block ',
      \ 'i' : 'INSERT ',
      \ 'R' : 'REPLACE ',
      \ 'c' : 'COMMAND ',
      \ 't' : 'TERMINAL ',
      \ 's' : 'SELECT '
      \}

" ============================================================================
" FUNCIÓN: ICONOS POR TIPO DE ARCHIVO
" ============================================================================

function! GetFileTypeIcon()
  let l:filetype = &filetype
  if l:filetype == 'python'
    return ''
  elseif l:filetype == 'cpp'
    return ''
  elseif l:filetype == 'fortran'
    return '󱈚'
  elseif l:filetype == 'markdown'
    return ''
  elseif l:filetype == 'sh'
    return ''
  elseif l:filetype == 'zsh'
    return ''
  elseif l:filetype == 'tex'
    return ''
  elseif l:filetype == 'vim'
    return ''
  elseif l:filetype == 'conf'
    return ''
  elseif l:filetype == 'in'
    return ''
  elseif l:filetype == 'dat'
    return ''
  elseif l:filetype == 'txt'
    return '󰯂'
  else
    return '󰈙'
  endif
endfunction

" ============================================================================
" FUNCIÓN: INFORMACIÓN DE PESTAÑAS
" ============================================================================

function! GetTabsInfo()
  let l:tabs = ''
  for i in range(1, tabpagenr('$'))
    let l:tabnr = i
    let l:tabname = fnamemodify(bufname(tabpagebuflist(i)[tabpagewinnr(i) - 1]), ':t')
    let l:modified = getbufvar(tabpagebuflist(i)[tabpagewinnr(i) - 1], '&modified')
    let l:tabstatus = l:modified ? '%#TabLineModified#*' : '%#TabLine#'
    if i == tabpagenr()
      let l:tabstatus = '%#TabLineSel#'
    endif
    let l:tabs .= l:tabstatus . '  ' . l:tabnr . ':' . l:tabname . ' '
  endfor
  return l:tabs
endfunction

" Configurar línea de pestañas
set tabline=%!GetTabsInfo()

" ============================================================================
" FUNCIÓN PRINCIPAL: ACTUALIZAR STATUSBAR
" ============================================================================

function! UpdateStatusline()
  " 1. DETERMINAR MODO ACTUAL Y COLOR
  let l:mode = mode()
  let l:mode_symbol = ''
  let l:mode_text = get(g:currentmode, l:mode, 'NORMAL')

  " Asignar color según modo
  if l:mode ==# 'i'
    let l:color = 'StslineInsertColor'
  elseif l:mode ==# 'R'
    let l:color = 'StslineReplaceColor'
  elseif l:mode ==# 'v' || l:mode ==# 'V' || l:mode ==# "\<C-v>"
    let l:color = 'StslineVisualColor'
  elseif l:mode ==# 'c'
    let l:color = 'StslineCommandColor'
  elseif l:mode ==# 't'
    let l:color = 'StslineTerminalColor'
  else
    let l:color = 'StslineNormalColor'
  endif

  " 2. LISTA DE BÚFERES ABIERTOS
  let l:buffer_list = getbufinfo({'bufloaded': 1})
  let l:buffer_names = []
  for l:buf in l:buffer_list
    let l:buffer_name = buf.name != '' ? fnamemodify(buf.name, ':t') : '[Sin nombre]'
    call add(l:buffer_names, l:buf.bufnr . ':' . l:buffer_name)
  endfor

  " 3. CONTADOR DE PESTAÑAS
  let l:tab_count = tabpagenr('$')

  " 4. CONSTRUIR STATUSBAR
  let &statusline = ''

  " Izquierda: Modo
  let &statusline .= '%#' . l:color . '#'
  let &statusline .= ' ' . l:mode_symbol . ' '
  let &statusline .= ' ' . l:mode_text . ' '

  " Izquierda: Búferes
  let &statusline .= '%#StatusBuffer#'
  let &statusline .= ' ﬘ ' . len(l:buffer_names)

  " Izquierda: Pestañas
  let &statusline .= ' %#StatusTabs#'
  let &statusline .= ' 󰝜 ' . l:tab_count . ' '

  " Izquierda: Solo lectura
  let &statusline .= '%{&readonly ? " " : ""}'

  " Centro: Ruta del archivo y modificado
  let &statusline .= ' %#StatusFilePath#'
  let &statusline .= '  %f '
  let &statusline .= '%{&modified ? " " : ""}'

  " Separador (empuja el resto a la derecha)
  let &statusline .= '%='

  " Derecha: Tipo de archivo
  let &statusline .= '%#OrangeFileIcon#'
  let &statusline .= ' %{GetFileTypeIcon()} '
  let &statusline .= '%{&filetype !=# "" ? &filetype : "Sin tipo"} '

  " Derecha: Porcentaje y posición
  let &statusline .= '%#StatusTabs#'
  let &statusline .= '  %p%% '
  let &statusline .= '  %l/%L:%c '
endfunction

" ============================================================================
" AUTOCOMANDOS PARA ACTUALIZAR STATUSBAR
" ============================================================================

augroup StatuslineAuto
  autocmd!
  autocmd VimEnter,WinEnter,BufEnter,InsertEnter,InsertLeave,ModeChanged * call UpdateStatusline()
  autocmd BufWritePost,FileChangedShellPost * call UpdateStatusline()
augroup END

" Inicializar statusline
call UpdateStatusline()

" ============================================================================
" FUNCIÓN GIT (OPCIONAL - DESCOMENTAR SI SE NECESITA)
" ============================================================================

" function! StatuslineGitBranch()
"     let b:gitbranch=""
"     if &modifiable
"         try
"             let l:dir=expand('%:p:h')
"             let l:gitrevparse = system("git -C ".l:dir." rev-parse --abbrev-ref HEAD")
"             if !v:shell_error
"                 let b:gitbranch="( ".substitute(l:gitrevparse, '\n', '', 'g').") "
"             endif
"         catch
"         endtry
"     endif
" endfunction
"
" augroup GetGitBranch
"     autocmd!
"     autocmd VimEnter,WinEnter,BufEnter * call StatuslineGitBranch()
" augroup END

" Presenterm comment command helper
if executable('presenterm') && executable('fzf')
  inoremap <expr> <c-k> fzf#vim#complete(fzf#wrap({
        \ 'source':  'presenterm --list-comment-commands',
        \ 'options': '--header "Comment Command Selection" --no-hscroll',
        \ 'reducer': { lines -> lines[0] } }))
endif
