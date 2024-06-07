" =============================================================================
" CONFIGURACIONES GENERALES DE VIM ⚙️
" =============================================================================

"  reconoció la necesidad de números de línea! 🔢
set number

" Ratón activado, ¡para una navegación más ágil! 🖱️
set mouse=a

" Números de línea estrechos, para ahorrar espacio. 🔢
set numberwidth=1

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
set noshowmode

" =============================================================================
" SINtaxis y plugins 🔌
" =============================================================================

" Resaltado de sintaxis activado, para una mejor comprensión del código. 💡
syntax on
syntax enable

" Plugins cargados, para ampliar las funcionalidades. 🔌
source ~/.vim/custom/plugins.vim

" Configuración personalizada cargada, para ajustes específicos. ⚙️
source ~/.vim/custom/config.vim

" Asignaciones de teclas personalizadas cargadas, para una mayor eficiencia. ⌨️
source ~/.vim/custom/maps.vim

" =============================================================================
" COLORES Y BúSQUEDA 🔍
" =============================================================================

" Esquema de colores personalizado, para una experiencia visual agradable. 🎨
colorscheme chlordane

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
" EXTRAS DIVERTIDOS 🎉
" =============================================================================
"autocmd VimEnter * :echo system("fortune")
