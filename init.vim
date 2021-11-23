syntax on

set hidden
set mouse=a
set noerrorbells
set expandtab
set smartindent
set number
set rnu
set numberwidth=1
set nowrap
set noswapfile
set nobackup
set incsearch
set ignorecase
set clipboard=unnamedplus
set encoding=utf-8
set cursorline
set termguicolors
set colorcolumn=120
set noshowmode
set nohlsearch
set relativenumber 		
set sw=4 			
set clipboard=unnamed			"para poder utilizar el portapapeles del sistema operativo 'esto permite poder copiar y pegar desde cualquier parte a nvim y viceversa.	


highlight ColorColumn ctermbg=0 guibg=lightgrey

"**UBUNTU**
"call plug#begin('~/.config/nvim/plugged')
"**WINDOWS
call plug#begin('~/AppData/Local/nvim/plugged') 

"related with themes
Plug 'joshdick/onedark.vim' 		"tema
Plug 'vim-airline/vim-airline'		"diseño de la barra en la cual se muestran los modos, la linea, etc.
Plug 'vim-airline/vim-airline-themes'	"temas para el vim-airline
Plug 'christoomey/vim-tmux-navigator'	"poder navegar entre archivos abiertos


" syntax
Plug 'sheerun/vim-polyglot'

" status bar
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'
" tree
Plug 'scrooloose/nerdtree'

" typing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'

" tmux
"Plug 'benmills/vimux'
"Plug 'christoomey/vim-tmux-navigator'

""autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions=['coc-prettier', 'coc-tsserver', 'coc-emmet', 'coc-tslint', 'coc-prettier', 'coc-html', 'coc-explorer']

"fzf file explorer
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'

"for js typescript
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'

" Plugins
call plug#end()

" exit insert mode 
inoremap ii <ESC>

let mapleader=" "
" keymaps with set hiddenleader
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
map <C-p> :Files<CR>

"COC ON TAB
" use <tab for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

"Tab between buffers 
nnoremap <S-tab> :bp<CR>
nnoremap <c-i> :bn<CR>

"F2 to open init.vim
"**UBUNTU**
"nnoremap <F2> :15sp ~/.config/nvim/init.vim<CR>
"**WINDOWS**
nnoremap <F2> :15sp ~/AppData/Local/nvim/init.vim 
call plug#end() 			"cerramos el llamado de los plugins


"configuracion de nerdtree
"mapeando el abrir y cerrar de nerdtree con nerdtreetoggle vemos los archivos en el arbol y podemos cerrarlo a la vez, map es la C mayuscula representa el
"control y -n la tecla n lo que indica que realizará la siguiente funcion de excribir el comando NERDTreeToggle y CR significa ENTER.
nmap <leader>e :CocCommand explorer<CR>
"map <C-n> :NERDTreeToggle<CR>
map <C-p> :Files<CR>

"configuracion del tema
set termguicolors 			"activa el true color en la terminal
colorscheme onedark 			"activar el tema onedark

"configuracion de vim-airline
let g:airline#extensions#tabline#enabled = 1	"muestra la linea de pestaña en la que estamos buffer
let g:airline#extensions#tabline#formatter = 'unique_tail'	"muestra solo el nombre del archivo que estamos modificando
let g:airline_theme='onedark'	"el tema de airline



"configuracion por defecto de coc
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif


