call plug#begin()
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' } "Explorador de archivos integrado para vim 
Plug 'xolox/vim-colorscheme-switcher' "cambiador de esquemas de colores en vim 
Plug 'xolox/vim-misc' "Complemento con varias funciones en vim

"++++++++++++++++++++++++++++++++++++"	
"	EDICION
"++++++++++++++++++++++++++++++++++++"

Plug 'yggdroot/indentline'   		" Indentacion de linea	
 Plug 'itchyny/lightline.vim'
 Plug 'turbio/bracey.vim'
"++++++++++++++++++++++++++++++++++++"	
"	VISUALIZACION
"++++++++++++++++++++++++++++++++++++"

Plug 'ryanoasis/vim-devicons'		" Iconos para vim
Plug 'preservim/tagbar'			" Barra de Etiquetas para vim
Plug 'segeljakt/vim-silicon'  		" Toma capturas de fragmentos de codigo 
"++++++++++++++++++++++++++++++++++++"	
"	PROGRAMACION
"++++++++++++++++++++++++++++++++++++"

Plug 'mhinz/vim-startify'  " Interfaz de usuario moderna y personalzable en vim.
Plug 'honza/vim-snippets'  "Atajos de teclado para trozos de codigo
Plug 'sheerun/vim-polyglot'

"++++++++++++++++++++++++++++++++++++"
"autocomplete
"++++++++++++++++++++++++++++++++++++"

Plug 'prabirshrestha/vim-lsp' 	"Integracion con LSP(protocolo del servidor de lenguaje) en vim.
Plug 'mattn/vim-lsp-settings' 	"Configuracion para vim-lsp
Plug 'neoclide/coc.nvim', {'branch': 'release'}	"Completado automatico y otras funciones avanzadas para vim 


"++++++++++++++++++++++++++++++++++++"	
"	PRODUCTIVIDAD
"++++++++++++++++++++++++++++++++++++"	

Plug 'jiangmiao/auto-pairs' 	" Insercion automatica de pares de caracteres (como parentesis y corchetes)
Plug 'voldikss/vim-floaterm'  "Terminal Flotante para vim.
Plug 'SirVer/ultisnips'			"Complemento para crear y gestionar fragmentos de codigo personalizados para vim.
Plug 'mlaursen/vim-react-snippets'
Plug 'dhruvasagar/vim-table-mode'	" Complemento para habilitar vim en modo de tablas para markdown
Plug 'pangloss/vim-javascript'
Plug 'peitalin/vim-jsx-typescript'
Plug 'peitalin/vim-jsx-typescript'


"++++++++++++++++++++++++++++++++++++"	
"	COMPLEMENTOS Y DEPURADORES
"++++++++++++++++++++++++++++++++++++"
Plug 'https://github.com/wolandark/vim-live-server.git'   "Complemento de Servidor web
call plug#end()

