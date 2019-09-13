set nocompatible
filetype off
filetype plugin indent on
syntax enable
"syntax on

set autoread

call plug#begin('~/.vim/plugged')
if filereadable(expand("~/.vimrc.plugs"))
    source ~/.vimrc.plugs
endif

call plug#end()
set history=500
""""""""""""""""""""""
" => General
""""""""""""""""""""""

let mapleader = ','
map <leader>w :w!<cr>
nmap <leader>s :source %<cr>
nmap <leader>pi :PlugInstall<cr>
nmap <leader>ev :e ~/.vimrc<cr>
nmap <leader>pe :e ~/.vimrc.plugs<cr>
nmap <leader>ep :e#<cr>

set undodir=~/.vim/undodir
set undofile
set undolevels=1000
set undoreload=10000

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set so=5
set wildmenu
set wildignore=*.o,*~,*.pyc

if has("win16") || has("win32")
   "set wildignore+=.git\*,.hg\*,.svn\*
else
   "set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

set ruler
set cmdheight=1

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set magic
set showmatch
set mat=2
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set number relativenumber

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable
set encoding=utf-8

set bg=dark

"colorscheme dracula
colorscheme gruvbox


" Use Unix as the standard file type
set ffs=unix,dos,mac


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
set textwidth=79

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


nnoremap <Leader>sn :set number!<CR>
nnoremap <Leader>srn :set relativenumber!<CR>
nnoremap <Leader>ev :e ~/.vimrc<CR>
nnoremap <Leader>eb :e ~/.bashrc<CR>
nnoremap <Leader>nn :NERDTreeToggle<CR>


"""""""""""""
" => NerdTree
"""""""""""""
" How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden=1


let g:airline#extensions#ale#enabled = 1
let g:airline_theme='vice'

"if executable('pyls')
   "au User lsp_setup call lsp#register_server({
       "\ 'name': 'pyls',
       "\ 'cmd': {server_info->['pyls']},
       "\ 'whitelist': ['python'],
       "\ })
"endif

let g:ale_linters = {
           \ 'python': ['pylint', 'pyls']
           \}

let g:ale_fixers = {
           \'python': ['black'],
           \}
let g:ale_fix_on_save = 1
let g:ale_list_window_size = 5

let g:ale_completion_enabled = 1

