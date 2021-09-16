" CONFIGURACIÓN VIM DANIEL FRANCO
" Configuración
syntax on 
set title  "Muestra el nombre del archivo en la ventana de la terminal
set number  " Muestra los números de las líneas
set relativenumber " Numeración relativa
set mouse=a  " Permite la integración del mouse (seleccionar texto, mover el cursor)
set noerrorbells " No sonidos de error
set nowrap  " No dividir la línea si es muy larga
set encoding=utf-8 " Permitir caracteres internacionales
set cursorline " Me permite tener el curso en formato de linea
set clipboard=unnamed

set colorcolumn=120  " Muestra la columna límite a 120 caracteres

" Indentación a 4 espacios
set tabstop=4
set shiftwidth=4
set softtabstop=4
set shiftround
set expandtab  " Insertar espacios en lugar de <Tab>
set smartindent " Identación inteligente

set hidden  " Permitir cambiar de buffers sin tener que guardarlos

set hlsearch " Highlisht matches
set incsearch " Incremental searching
set ignorecase  " Ignorar mayúsculas al hacer una búsqueda
set smartcase  " No ignorar mayúsculas si la palabra a buscar contiene mayúsculas

set spelllang=en,es  " Corregir palabras usando diccionarios en inglés y español
set nocompatible
set termguicolors  " Activa true colors en la terminal
highlight ColoColum ctermbg=0 guibg=lightgrey


" MAPPINGS DE DANIEL

let g:mapleader = ' '  " Definir espacio como la tecla líder

"Use F5 to refresh your editor with the config file that you specify here
nmap <F5> :source %<CR>
vmap <F5> :source %<CR>

nnoremap <leader>w :w<CR>  " Guardar con <líder> + s
nnoremap <leader>q :q<CR>  " Guardar con <líder> + s

nnoremap <leader>e :e $MYVIMRC<CR>  " Abrir el archivo init.vim con <líder> + e

" Usar <líder> + y para copiar al portapapeles
vnoremap <leader>y "+y
nnoremap <leader>y "+y

" Usar <líder> + d para cortar al portapapeles
vnoremap <leader>d "+d
nnoremap <leader>d "+d

" Usar <líder> + p para pegar desde el portapapeles
nnoremap <leader>p "+p
vnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>P "+P

" Moverse al buffer siguiente con <líder> + l
nnoremap <leader>l :bnext<CR>

" Moverse al buffer anterior con <líder> + h
nnoremap <leader>h :bprevious<CR>

" Cerrar el buffer actual con <líder> + q
nnoremap <leader>de :bdelete<CR>

" Tree
nnoremap <leader>b :NERDTreeToggle<CR>


" PLUGINS

call plug#begin('~/.local/share/nvim/plugged')

" syntax
Plug 'sheerun/vim-polyglot'

" status bar
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'
Plug 'shinchu/lightline-gruvbox.vim'

" Tree
Plug 'preservim/nerdtree'

" typing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" IDE
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'mhinz/vim-signify'
Plug 'Yggdroot/indentLine'
Plug 'luochen1990/rainbow'
Plug 'preservim/nerdcommenter'
Plug 'ryanoasis/vim-devicons'
Plug 'easymotion/vim-easymotion'

" themes
Plug 'morhetz/gruvbox'

call plug#end()


" CONFIG THEME

set background=dark
let g:gruvbox_cotrast_dark="hard"
colorscheme gruvbox
highlight Normal ctermbg=NONE
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
nmap <leader>f <Plug>(easymotion-s2)
let g:EasyMotion_smartcase = 1
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'
if exists("g:loaded_webdevicons")
    call webdevicons#refresh()
endif

" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''

let g:closetag_close_shortcut = '<leader>>'
