set nocompatible              " Be iMproved, required
filetype off                  " Required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/bundle/')
"
" Alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"
" Keep Plugin commands between vundle#begin/end.
"
" GitHub 
Plugin 'tpope/vim-fugitive'
"
" GitGutter
Plugin 'airblade/vim-gitgutter'
"
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}
"
" LaTeX
Plugin 'lervag/vimtex' 
"
" Neotex
Plugin 'donRaphaco/neotex'
"
" Ncm-R
Plugin 'gaalcaras/ncm-R'
"
" NERDTree
Plugin 'scrooloose/nerdtree' 
"
" Pandoc
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax' 
"
" Markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
"
" RMarkdown
Plugin 'vim-pandoc/vim-rmarkdown'
"
" Vim Slime
Plugin 'jpalardy/vim-slime'
"
" Snippets
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
"
" Spelling -- Brazilian Portuguese
Plugin 'mateusbraga/vim-spell-pt-br'
"
" Surround
Plugin 'tpope/vim-surround'
"
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
" Settings
set number                      " Show line numbers
set showmatch                   " Highlight matching brace
set spelllang=en_gb,pt_br       " British English, Brazilian Portuguese
autocmd BufRead,BufNewFile *.tex setlocal spell
autocmd BufRead,BufNewFile *.md setlocal spell
set visualbell                  " Use visual bell (no beeping)
set mouse=a                     " Automatically enable mouse usage
set mousehide                   " Hide mouse when typing
set hlsearch                    " Highlight all search results
set smartcase                   " Enable smart-case search
set ignorecase                  " Always case-insensitive
set incsearch                   " Searches for strings incrementally
set smarttab                    " Enable smart-tabs
set softtabstop=4               " Number of spaces per Tab
set linebreak                   " Break lines
set undolevels=1000             " Number of undo levels
set nofoldenable                " Disable folding 
set laststatus=2                " Show status bar
set backspace=indent,eol,start  " backspacing over everything in insert mode
set confirm                     " Y-N-C prompt if closing with unsaved changes
"
" Molokai
syntax enable
colorscheme molokai
"
" Mapleader
let mapleader = ","
"
" Localleader
let maplocalleader = "-"
"
" Quick yanking to the end of the line
nnoremap Y y$
"
" Yank/paste to the OS clipboard with ,y and ,p
nnoremap <leader>y "+y
nnoremap <leader>Y "+y$
nnoremap <leader>p "+p
nnoremap <leader>P "+P
"
" Add colours to terminal
let g:ConqueTerm_Color = 2
"
" Shortcuts - Vimtex
map <S-b> :VimtexCompile <CR>
" 
" Vim-Slime: set up Vim Terminal
let g:slime_target = "vimterminal"
"
" Set filetype of files with extension .tex to tex
let g:tex_flavor='latex'
"
" Enable pandoc functionality for markdown files 
let g:pandoc#filetypes#handled = ["pandoc", "markdown"]
let g:pandoc#filetypes#pandoc_markdown = 0
"
" Disable pandoc folding
let g:pandoc#modules#disabled = ["folding"]
"
" Enable NERDTree on startup
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Let NERDTree show hidden files
let NERDTreeShowHidden=1
"
" Remove indentation from a file
map <F3> :setl noai nocin nosi inde= <CR>
"
" Remove all indentation
filetype indent off
"
" Clear highlighting by pressing Enter (Return) in normal modemap
map <silent>  <F4> :noh <CR>
"
" Yank all text
map <C-a> :%y+ <CR>
"
" Close every window and save
nmap <silent> <leader>w :wqall <CR>
nmap <silent> <leader>q :qa! <CR>
