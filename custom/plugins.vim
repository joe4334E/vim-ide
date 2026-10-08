call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Exafunction/windsurf.vim', { 'branch': 'main' }
Plug 'jiangmiao/auto-pairs'

Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'junegunn/fzf.vim'
" Plug 'preservim/tagbar'
Plug 'Yggdroot/indentLine'
Plug 'junegunn/goyo.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }
Plug 'chrisbra/csv.vim'

Plug 'wuelnerdotexe/vim-astro'
Plug 'kaarmu/typst.vim'

Plug 'mhinz/vim-startify'
Plug 'xolox/vim-colorscheme-switcher'
Plug 'xolox/vim-misc'
Plug 'voldikss/vim-floaterm'
Plug 'mattn/vim-notification'
Plug 'tpope/vim-commentary'

call plug#end()
