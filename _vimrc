"  __  ____   ____     _____ __  __ ____   ____ 
" |  \/  \ \ / /\ \   / /_ _|  \/  |  _ \ / ___|
" | |\/| |\ V /  \ \ / / | || |\/| | |_) | |    
" | |  | | | |    \ V /  | || |  | |  _ <| |___ 
" |_|  |_| |_|     \_/  |___|_|  |_|_| \_\\____|
"                                               
" === system settings
let mapleader=","
set nocompatible
syntax on
filetype plugin on
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
set scrolloff=10

" Maintain undo histroy between sessions
set undofile 
set undodir=~\.vim\undodir

set clipboard=unnamed

set noswapfile
set nobackup
set nowritebackup

source ~/.vim/snippets.vim


" === key map
map s  :<nop>
map Q  :q<cr>
map S  :w<cr>
map R  :source ~\_vimrc <cr>
map rc :e ~\_vimrc<cr>
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

" leader key map
map <leader><leader> <Esc>/<++><cr>:nohlsearch<cr>c4l
map <leader><cr> :nohlsearch<cr>
map <leader>sc :set spell!<cr>
map <leader>r  <C-r>
map <leader>n :bn<cr>
map <leader>p :bp<cr>

" other mode map
inoremap jj <Esc>`^
nmap <leader>s <Plug>(easymotion-2)

" Compile function
map r :call CompileRunGcc()<CR>
func! CompileRunGcc()
	exec "w"
	if &filetype == 'c'
		exec "!g++ % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'cpp'
		exec "!g++ % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'java'			
		exec "!javac %"
		exec "!time java %<"
	elseif &filetype == 'sh'			
		:!time bash %
	elseif &filetype == 'python'
		silent! exec "!clear"
		exec "!time python3 %"
	elseif &filetype == 'html'	
		exec "!chrome % &"
	elseif &filetype == 'markdown'			
		exec "MarkdownPreview"
	elseif &filetype == 'vimwiki'
		exec "MarkdownPreview"
	endif			
endfunc


" === plugins
call plug#begin('~\.vim\plugged')


" Editor Enhancement
Plug 'bling/vim-bufferline'
Plug 'preservim/nerdtree'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim'
Plug 'ayu-theme/ayu-vim'
Plug 'connorholyday/vim-snazzy'
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
Plug 'xolox/vim-session'
Plug 'farmergreg/vim-lastplace'
Plug 'voldikss/vim-translator'
Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'luochen1990/rainbow'
Plug 'jiangmiao/auto-pairs'
Plug 'brooth/far.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Shougo/neocomplete.vim'

" markdown
" Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
" Plug 'tpope/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install()  }, 'for': ['markdown', 'vim-plug'] }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for': ['text', 'markdown', 'vim-plug'] }
Plug 'mzlogin/vim-markdown-toc', { 'for': ['gitignore', 'markdown', 'vim-plug'] }
Plug 'dkarter/bullets.vim'

" vim application
Plug 'itchyny/calendar.vim'
Plug 'lambdalisue/battery.vim'

" file type(HTML, CSS, JavaScript, Json, PHP, Vue, etc.)
Plug 'elzr/vim-json'
Plug 'othree/html5.vim'
Plug 'alvan/vim-closetag' " auto close tag


call plug#end()


" === plugin configuration

" NERDTree
nmap <leader>g :NERDTreeToggle<cr>
nmap <leader>v :NERDTreeFind<cr>

" vim-easy-align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" airline
let g:airline#extensions#tabline#enabled = 1

" vim-session
let g:session_autosave = 'no'

" vim-translator
nmap <silent> <leader>t <Plug>TranslateW
vmap <silent> <leader>t <Plug>TranslateWV

" theme
let ayucolor="light"
colorscheme snazzy
let g:SnazzyTransparent = 1
set background=dark
let g:airline_theme='dracula'

" markdown-preview
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0 
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = 'chrome'
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
	  \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0
    \ 
		\	}
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'
let g:mkdp_filetypes = ['markdown']
