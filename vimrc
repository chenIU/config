set nocompatible
let mapleader=","
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
set undofile " Maintain undo histroy between sessions
set undodir=~/.vim/undodir

:let g:session_autosave = 'no'

map s :<nop>
map Q :q<CR>
map S :w<CR>
map R :source ~/.vim/vimrc <CR>
map rc :e ~/.vim/vimrc<CR>
map tx :r !figlet

" split window start
map si :set nosplitbelow<CR>:split<CR>
map sk :set splitbelow<CR>:split<CR>
map sj :set nosplitright<CR>:vsplit<CR>
map sl :set splitright<CR>:vsplit<CR>

map <LEADER>i <C-w>k
map <LEADER>k <C-w>j
map <LEADER>j <C-w>h
map <LEADER>l <C-w>l

map sv <C-w>t<C-w>H
map sh <C-w>t<C-w>K

map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize -5<CR>
map <right> :vertical resize +5<CR>
" split window end

" leader map
map <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l
map <LEADER><CR> :nohlsearch<CR>
map <LEADER>sc :set spell!<CR>
map <LEADER>r  <C-r>
map <leader>n :bn<CR>
map <leader>p :bp<CR>


" other mode map
inoremap jj <Esc>`^
nmap <LEADER>s <Plug>(easymotion-2)

" plugins
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

call plug#end()


" plugin shortcuts

" NERDTree
nmap <LEADER>g :NERDTreeToggle<CR>
nmap <LEADER>v :NERDTreeFind<CR>

" vim-easy-align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
