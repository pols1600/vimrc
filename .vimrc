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
" Airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"
" Easymotion (<Leader><Leader>-w or -f to toggle)
Plugin 'easymotion/vim-easymotion'
Plugin 'haya14busa/incsearch.vim'
Plugin 'haya14busa/incsearch-easymotion.vim'
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
" Synstastic
" Plugin 'vim-syntastic/syntastic'
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
set relativenumber		" Show relative line numbers
set showmatch                   " Highlight matching brace
set spelllang=en_gb             " British English, Brazilian Portuguese
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
set softtabstop=2               " Number of spaces per Tab
set linebreak                   " Break lines
set undolevels=1000             " Number of undo levels
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
" Airline configuration
let g:airline#extensions#tabline#enabled=1
let g:airline_theme='powerlineish'
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
" Some shortcuts for easymotion:
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)
"
" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)
"
" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)
"
" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)
"
" Enable NERDTree on startup
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"
" Let NERDTree show hidden files
let NERDTreeShowHidden=1
"
" Close NERDTreee with Ctrl+k Ctrl+b
map <C-k><C-b> :NERDTreeToggle<CR>
"
" Remove indentation from a file
map <F3> :setl noai nocin nosi inde= <CR>
"
" Remove all indentation
filetype indent off
"
" Clear highlighting by pressing Enter (Return) in normal modemap
nnoremap <cr> :noh<CR><CR>:<backspace>
"
" Yank all text
map <C-a> :%y+ <CR>
"
" Synstastic settings 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
map <C-r> :SyntasticReset<CR>
"
" Add Ctrl-V to gvim
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa
"
