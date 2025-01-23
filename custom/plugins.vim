call plug#begin()

"++++++++++++++++++++++++++++++++++++"	
"	INTEGRACION Y FUNCIONALIDAD
"++++++++++++++++++++++++++++++++++++"

Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' } " Explorador de archivos integrado para Vim
Plug 'preservim/tagbar' " Barra de Etiquetas para Vim
Plug 'ryanoasis/vim-devicons' " Iconos para Vim
Plug 'mhinz/vim-startify' " Interfaz de usuario moderna y personalizable en Vim
Plug 'tribela/vim-transparent'
"++++++++++++++++++++++++++++++++++++"	
"	VISUALIZACION Y TEMAS
"++++++++++++++++++++++++++++++++++++"

Plug 'xolox/vim-colorscheme-switcher' " Cambiador de esquemas de colores en Vim
Plug 'xolox/vim-misc' " Complemento con varias funciones en Vim
Plug 'segeljakt/vim-silicon' " Toma capturas de fragmentos de código
Plug 'itchyny/lightline.vim' " Barra de estado ligera para Vim
Plug 'yggdroot/indentline' " Indentación de líneas
Plug 'roobert/tailwindcss-colorizer-cmp.nvim'
Plug 'Valloric/YouCompleteMe'

"++++++++++++++++++++++++++++++++++++"	
"	EDICION Y PROGRAMACION
"++++++++++++++++++++++++++++++++++++"

Plug 'honza/vim-snippets' " Atajos de teclado para trozos de código
Plug 'sheerun/vim-polyglot' " Soporte para múltiples lenguajes
Plug 'pangloss/vim-javascript' " Soporte para JavaScript en Vim
Plug 'peitalin/vim-jsx-typescript' " Soporte para JSX y TypeScript en Vim
Plug 'mlaursen/vim-react-snippets' " Snippets para React en Vim
Plug 'lervag/vimtex'

Plug 'frenzyexists/aquarium-vim', { 'branch': 'develop' }
"++++++++++++++++++++++++++++++++++++"
"	AUTOCOMPLETADO Y LSP
"++++++++++++++++++++++++++++++++++++"

Plug 'prabirshrestha/vim-lsp' " Integración con LSP (Protocolo del servidor de lenguaje) en Vim
Plug 'mattn/vim-lsp-settings' " Configuración para vim-lsp
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Completado automático y otras funciones avanzadas para Vim
Plug 'prabirshrestha/asyncomplete.vim' " Integración con LSP para Vim
Plug 'prabirshrestha/asyncomplete-lsp.vim' " Integración con LSP para Vim

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

Plug 'turbio/bracey.vim' " Live preview para desarrollo frontend
Plug 'https://github.com/wolandark/vim-live-server.git' " Complemento de servidor web
Plug 'tibabit/vim-templates' " Plantillas de código para Vim

call plug#end()

