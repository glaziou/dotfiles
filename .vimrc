set nocompatible              " be iMproved, required
filetype off                  " required
set encoding=utf-8

    " set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    " alternatively, pass a path where Vundle should install plugins
    "call vundle#begin('~/some/path/here')

    " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"Plugin 'jalvesaq/R-Vim-runtime'
Plugin 'vim-scripts/Vim-R-plugin'

" The following are examples of different formats supported.
    " Keep Plugin commands between vundle#begin/end.
    " plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
    " plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
    " Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
    " git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
    " The sparkup vim script is in a subdirectory of this repo called vim.
    " Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
    " Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}
Plugin 'scrooloose/nerdtree'
Plugin 'csv.vim'
Plugin 'ctrlp.vim'
Plugin 'commentary.vim'
Plugin 'abolish.vim'
Plugin 'bufexplorer.zip'
Plugin 'bling/vim-bufferline'
Plugin 'bling/vim-airline'

    " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
    " To ignore plugin indent changes, instead use:
    "filetype plugin on
    "
    " Brief help
    " :PluginList          - list configured plugins
    " :PluginInstall(!)    - install (update) plugins
    " :PluginSearch(!) foo - search (or refresh cache first) for foo
    " :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
    "
    " see :h vundle for more details or wiki for FAQ
    " Put your non-Plugin stuff after this line



syntax on

nnoremap <silent> <f6> :set number!<cr>

" No sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set autochdir
set autoindent
set backup
set backupdir=~/.vimbackup
set cursorline
set expandtab
set gdefault
set hidden "can change buffers without saving
set ignorecase "command insensitive by default
set incsearch
set magic
set mouse=a
set nohls
set nowrap
set number
set numberwidth=5 " We are good up to 99999 lines
set ruler
set scrolloff=10 " Keep 10 lines (top/bottom) for scope
set shiftwidth=4
set showmatch
set si
set smartcase "if there are caps, go case-sensitive
set smarttab
set tabstop=4
set wildmenu "command completion

set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
    "              | | | | |  |   |      |  |     |    |
    "              | | | | |  |   |      |  |     |    + current 
    "              | | | | |  |   |      |  |     |       column
    "              | | | | |  |   |      |  |     +-- current line
    "              | | | | |  |   |      |  +-- current % into file
    "              | | | | |  |   |      +-- current syntax in 
    "              | | | | |  |   |          square brackets
    "              | | | | |  |   +-- current fileformat
    "              | | | | |  +-- number of lines
    "              | | | | +-- preview flag in square brackets
    "              | | | +-- help flag in square brackets
    "              | | +-- readonly flag in square brackets
    "              | +-- rodified flag in square brackets
    "              +-- full path to file in the buffer

 
set backupdir=$HOME/.vimbackup/
set directory=$HOME/.vimswap/
set viewdir=$HOME/.vimviews/

" check file change every 4 seconds ('CursorHold') and reload the buffer upon
" detecting change
set autoread                                                                                                                                                                                    
au CursorHold * checktime   

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
" let mapleader = ","
" let g:mapleader = ","
" let maplocalleader = ","

" Fast saving
nmap <leader>w :w!<cr>
nmap :Q :q

" Smart way to move btw. windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
map <leader>bd :Bclose<cr>

" Close all the buffers
map <leader>ba :1,300 bd!<cr>

" Navigate buffers
map <leader>n :bn<cr>
map <leader>p :bp<cr>
nnoremap <C-n> :bnext<CR>
"nnoremap <C-p> :bprevious<CR>
nnoremap <C-o> :bprevious<CR>

" When pressing <leader>cd switch to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>


" r-plugin
map <F2> <Plug>RStart
vmap <F2> <Plug>RStart
imap <F2> <Plug>RStart
map <F3> <Plug>RClose
imap <F3> <Plug>RClose
vmap <F3> <Plug>RClose
vmap <Space> <Plug>RDSendSelection
nmap <Space> <Plug>RDSendLine
let vimrplugin_by_vim_instance = 1
let vimrplugin_screenvsplit = 1
let g:ScreenImpl = 'Tmux'
let vimrplugin_vimpager = "horizontal"
let vimrplugin_vsplit = 1
nmap <F5> :call RScrollTerm()<CR>
let r_syntax_folding = 1
let vimrplugin_underscore = 1
let vimrplugin_applescript = 0
"let vimrplugin_vimpager = "no"
let vimrplugin_assign = 1

"NERDTree
map <leader>nt :NERDTree<CR>
map <leader>ntc :NERDTreeClose<CR>

"command-t
map <leader>tf :CommandTFlush<CR>

"ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

ab #l #------------------------------------------------------

"highlight Normal guibg=black guifg=white
set background=dark
colorscheme ir_black

set backspace=indent,eol,start

nnoremap Q <nop>

" reload .vimrc automatically
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

" spell
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
au BufNewFile,BufRead *.md setlocal spell
:map <F5> :setlocal spell! spelllang=en_gb<CR>
:imap <F5> <C-o>:setlocal spell! spelllang=en_gb<CR>
set complete+=kspell


" vim-airline
set laststatus=2
let g:airline_powerline_fonts=1
"let g:airline_section_b = '%{getcwd()}'
let g:airline_section_x = '%{getcwd()}'
"let g:airline_section_c = '%t'
let g:airline#extensions#csv#enabled = 1
let g:airline#extensions#csv#fnamemode = ':t' 
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#buffer_min_count = 0
let g:airline#extensions#tabline#tab_min_count = 0
let g:airline#extensions#default#layout = [
      \ [ 'a', 'b', 'c' ],
      \ [ 'x', 'y', 'z' ]
      \ ]

