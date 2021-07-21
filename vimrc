" === system settings
let mapleader=","
set nocompatible
syntax on
set number
set norelativenumber
set wildmenu
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
set smartindent
set tabstop=2


" Maintain undo histroy between sessions
set undofile 
set undodir=~/.vim/undodir

set wrap
set tw=0


" === map key
map s  :<nop>
map Q  :q<cr>
map S  :w<cr>
map R  :source ~/.vim/vimrc <cr>
map rc :e ~/.vim/vimrc<cr>
map tx :r !figlet
map N  :tabnew<cr>

" split window
map si :set nosplitbelow<cr>:split<cr>
map sk :set splitbelow<cr>:split<cr>
map sj :set nosplitright<cr>:vsplit<cr>
map sl :set splitright<cr>:vsplit<cr>

map <leader>i <C-w>k
map <leader>k <C-w>j
map <leader>j <C-w>h
map <leader>l <C-w>l

map sv <C-w>t<C-w>H
map sh <C-w>t<C-w>K

map <up>    :res +5<cr>
map <down>  :res -5<cr>
map <left>  :vertical resize -5<cr>
map <right> :vertical resize +5<cr>

" === leader map
map <leader><leader> <Esc>/<++><cr>:nohlsearch<cr>c4l
map <leader><cr> :nohlsearch<cr>
map <leader>sc :set spell!<cr>
" redo
map <leader>r <C-r>

map <leader>n :bn<cr>
map <leader>p :bp<cr>


" other mode map
inoremap jj <Esc>`^
nmap <leader>s <Plug>(easymotion-2)

" === plugins
call plug#begin('~/.vim/plugged')

Plug 'bling/vim-bufferline'
Plug 'preservim/nerdtree'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf'
Plug 'easymotion/vim-easymotion'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'mbbill/undotree'
Plug 'xolox/vim-misc'
Plug 'farmergreg/vim-lastplace'
Plug 'chr4/nginx.vim'

" markdown
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for': ['text', 'markdown', 'vim-plug'] }
Plug 'mzlogin/vim-markdown-toc', { 'for': ['gitignore', 'markdown', 'vim-plug'] }
Plug 'dkarter/bullets.vim'

" Vim Applications
Plug 'itchyny/calendar.vim'

" Translator
" Plug 'voldikss/vim-translator'

" file type(HTML, CSS, JavaScript, Json, PHP, Vue, etc.)
Plug 'elzr/vim-json'
Plug 'othree/html5.vim'
Plug 'alvan/vim-closetag' " auto close tag

" Editor Enhancement
Plug 'luochen1990/rainbow'
Plug 'jiangmiao/auto-pairs'
Plug 'brooth/far.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Shougo/neocomplete.vim'
"Plug 'lambdalisue/battery.vim'

call plug#end()


" === plugin configurations

" airline
let g:airline#extensions#tabline#enabled = 1


" NERDTree
nmap <leader>g :NERDTreeToggle<cr>
nmap <leader>v :NERDTreeFind<cr>

" vim-easy-align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" vim-translator
" let g:translator_history_enable = 'false'

" rainbow
let g:rainbow_active = 1
noremap <leader>rt :RainbowToggle<cr>

" neocomplete
let g:neocomplete#enable_at_startup = 1

" vim-session
let g:session_autosave = 'no'
