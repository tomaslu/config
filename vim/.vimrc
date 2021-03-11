set nocompatible              " be iMproved, required
filetype off                  " required

" NOTE: Old configuration for when Vundle was being used (it should be ignored
" now)
"
"     " set the runtime path to include Vundle and initialize
"     set rtp+=~/.vim/bundle/Vundle.vim
"     call vundle#begin()
"     " alternatively, pass a path where Vundle should install plugins
"     "call vundle#begin('~/some/path/here')
"     
"     " All Vundle plugins are installed with :PluginInstall
"     
"     " let Vundle manage Vundle, required
"     Plugin 'gmarik/Vundle.vim'
"     
"     " CtrlP plugin
"     Plugin 'ctrlpvim/ctrlp.vim'
"     
"     " NERDTree plugin
"     Plugin 'scrooloose/nerdtree'
"     
"     " ack (ag) plugin
"     " Bundle 'mileszs/ack.vim'
"     
"     " syntastic plugin
"     " Bundle 'scrooloose/syntastic'
"     
"     " Go plugin
"     " Plugin 'fatih/vim-go'
"     
"     " Scala plugin
"     " Plugin 'derekwyatt/vim-scala'
"     
"     " status/tab plugin
"     Plugin 'vim-airline/vim-airline'
"     
"     " All of your Plugins must be added before the following line
"     call vundle#end()            " required
"     filetype plugin indent on    " required
"     " To ignore plugin indent changes, instead use:
"     "filetype plugin on
"     "
"     " Brief help
"     " :PluginList          - list configured plugins
"     " :PluginInstall(!)    - install (update) plugins
"     " :PluginSearch(!) foo - search (or refresh cache first) for foo
"     " :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"     "
"     " see :h vundle for more details or wiki for FAQ
"     " Put your non-Plugin stuff after this line

" This configuration uses vim8 plugins directly. Do the following to install
" the plugins:
"
" mkdir -p ~/.vim/pack/vendor/start
" git clone --depth 1 https://github.com/preservim/nerdtree.git
" git clone --depth 1 https://github.com/ctrlpvim/ctrlp.vim.git
" git clone --depth 1 https://github.com/mileszs/ack.vim.git
" git clone --depth 1 https://github.com/vim-airline/vim-airline.git

syntax on
filetype indent plugin on

set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4

" set identation for different filetypes
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype css setlocal ts=2 sts=2 sw=2
autocmd Filetype go setlocal ts=8 sts=8 sw=8

" set a marker for line 80
set colorcolumn=80

" set color scheme
color desert 

" don't make swap fieles
set noswapfile

" show line numbers
set number

" auto reload of .vimrc
autocmd! bufwritepost .vimrc source %

" set map leader key
let mapleader = ","

" Type 'jj' in insert mode to leave insert mode
imap jj <Esc>

" Leader shortcuts
noremap <Leader>q :quit<CR>
noremap <Leader>Q :qa<CR>
noremap <Leader>c :CtrlP<CR>
noremap <Leader>b :CtrlPBuffer<CR>
noremap <Leader>v :vsplit<CR>
noremap <Leader>h :split<CR>
noremap <Leader>n :NERDTree<CR>
noremap <Leader>t :tabnew<CR>
noremap <Leader>s :w<CR>

map <C-l> <C-w>l
map <C-k> <C-w>k
map <C-j> <C-w>j
map <C-h> <C-w>h

" configure ack plugin to use ag (requires ack and ag)
let g:ackprg = 'ag --nogroup --nocolor --column'

" configure NERDTree to ignore non-editable files
let NERDTreeIgnore = ['\.pyc$']

" syntastic configuration
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
"
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" vim-go configuration
" autocmd FileType go nmap <Leader>b <Plug>(go-build)
" autocmd FileType go nmap <Leader>r <Plug>(go-run)
