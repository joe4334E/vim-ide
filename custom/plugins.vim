call plug#begin()

"++++++++++++++++++++++++++++++++++++"	
"	INTEGRACION Y FUNCIONALIDAD
"++++++++++++++++++++++++++++++++++++"

Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' } " Explorador de archivos integrado para Vim
Plug 'preservim/tagbar' " Barra de Etiquetas para Vim
Plug 'ryanoasis/vim-devicons' " Iconos para Vim
Plug 'mhinz/vim-startify' " Interfaz de usuario moderna y personalizable en Vim
Plug 'tribela/vim-transparent'
Plug 'ycm-core/YouCompleteMe'

"++++++++++++++++++++++++++++++++++++"	
"	VISUALIZACION Y TEMAS
"++++++++++++++++++++++++++++++++++++"

Plug 'xolox/vim-colorscheme-switcher' " Cambiador de esquemas de colores en Vim
Plug 'xolox/vim-misc' " Complemento con varias funciones en Vim
Plug 'segeljakt/vim-silicon' " Toma capturas de fragmentos de código
Plug 'itchyny/lightline.vim' " Barra de estado ligera para Vim
Plug 'yggdroot/indentline' " Indentación de líneas

"++++++++++++++++++++++++++++++++++++"	
"	EDICION Y PROGRAMACION
"++++++++++++++++++++++++++++++++++++"

Plug 'honza/vim-snippets' " Atajos de teclado para trozos de código
Plug 'sheerun/vim-polyglot' " Soporte para múltiples lenguajes
"++++++++++++++++++++++++++++++++++++"
"	AUTOCOMPLETADO Y LSP
"++++++++++++++++++++++++++++++++++++"

Plug 'neoclide/coc.nvim', {'branch': 'release'} " Completado automático y otras funciones avanzadas para Vim

"++++++++++++++++++++++++++++++++++++"	
"	PRODUCTIVIDAD Y HERRAMIENTAS
"++++++++++++++++++++++++++++++++++++"

Plug 'jiangmiao/auto-pairs' " Inserción automática de pares de caracteres (como paréntesis y corchetes)
Plug 'voldikss/vim-floaterm' " Terminal flotante para Vim
Plug 'SirVer/ultisnips' " Complemento para crear y gestionar fragmentos de código personalizados para Vim
Plug 'dhruvasagar/vim-table-mode' " Complemento para habilitar Vim en modo de tablas para Markdown

"++++++++++++++++++++++++++++++++++++"	
"	COMPLEMENTOS Y DEPURADORES
"++++++++++++++++++++++++++++++++++++"
call plug#end()

