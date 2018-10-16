" __   _(_)_ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
"   \_/ |_|_| |_| |_|_|  \___|
"

set nocompatible              " Be iMproved, required
filetype off                  " Required

" Set the runtime path to include Vundle and initialise
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/bundle/')

" Alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Please keep Plugin commands between vundle#begin/end.

" Airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Auto-save
Plugin '907th/vim-auto-save'
let g:auto_save        = 1
let g:auto_save_silent = 1
let g:auto_save_events = ["InsertLeave", "TextChanged", "FocusLost"]

" Completor  
Plugin 'ervandew/supertab'

" Echodoc
Plugin 'Shougo/echodoc.vim'

" Easymotion (<Leader>-w or -f to toggle)
Plugin 'easymotion/vim-easymotion'
Plugin 'haya14busa/incsearch.vim'
Plugin 'haya14busa/incsearch-easymotion.vim'

" GitGutter
Plugin 'airblade/vim-gitgutter'

" Goyo 
Plugin 'junegunn/goyo.vim'

" GitHub 
Plugin 'tpope/vim-fugitive'

" Gruvbox
Plugin 'morhetz/gruvbox'

" indentLines
Plugin 'Yggdroot/indentLine'

" Lion
Plugin 'tommcdo/vim-lion'
let g:lion_squeeze_spaces = 1

" Markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" NERDTree
Plugin 'scrooloose/nerdtree' 

" NERDTree git
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Pandoc
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax' 

" RMarkdown
Plugin 'vim-pandoc/vim-rmarkdown'

" Snippets
Plugin 'SirVer/ultisnips'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'Shougo/neosnippet.vim'
Plugin 'honza/vim-snippets'

" Surround
Plugin 'tpope/vim-surround'

" Targets
Plugin 'wellle/targets.vim'

" Vim Lexical
Plugin 'reedes/vim-lexical'

" Vim PDF
Plugin 'rhysd/open-pdf.vim'

" Vim Pencil
Plugin 'reedes/vim-pencil'

" Vim Slime
Plugin 'jpalardy/vim-slime'

" Vimtex
Plugin 'lervag/vimtex'

" Vimwordy
Plugin 'reedes/vim-wordy'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
" filetype plugin on

" Brief help
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Settings
set number                      " Show line numbers
set relativenumber		" Show relative line numbers
set showmatch                   " Highlight matching brace
set spelllang=en_gb             " British English
autocmd FileType plaintex,tex,latex syntax spell toplevel " spelling
autocmd FileType plaintex,tex,latex,md,markdown,bib,bibtex setlocal spl=en_gb spell
set visualbell                  " Use visual bell (no beeping)
set wildmenu                    " Show menu autocomplete options
set mouse=a                     " Automatically enable mouse usage
set mousehide                   " Hide mouse when typing
set hlsearch                    " Highlight all search results
set splitright                  " Always split right
set smartcase                   " Enable smart-case search
set ignorecase                  " Always case-insensitive
set incsearch                   " Searches for strings incrementally
set smarttab                    " Enable smart-tabs
set autowrite                   " Auto-save files
set autowriteall                " Auto-save all buffers
set tabstop=4	                " Number of spaces per Tab
set softtabstop=0 noexpandtab   " Tab 
set shiftwidth=4				" Indent to be a single tab
set linebreak                   " Break lines
set undolevels=1000             " Number of undo levels
set laststatus=2                " Show status bar
set backspace=indent,eol,start  " backspacing over everything in insert mode
set confirm                     " Y-N-C prompt if closing with unsaved changes
set macligatures                " Ligatures 
set guifont=Fira\ Code:h15      " Font size
set nospell                     " No spelling for all files
set modeline                    " Set variables specific to files
set completeopt+=menuone        " Autocomplete
set completeopt+=noselect
set shortmess+=c                " Shut off completion messages
set belloff+=ctrlg              " If Vim beeps during completion
hi SpellBad cterm=underline ctermfg=red

" Gruvbox
syntax enable
let g:gruvbox_italic=1
let g:gruvbox_guisp_fallback="bg"
colorscheme gruvbox
set background=dark
hi SpellBad cterm=underline,bold gui=underline guifg=red

" Set nospell
map <leader>n :setlocal nospell <CR>

" indentLines
let g:indentLine_setColors = 1
let g:indentLine_char = '|'
let g:indentLine_enabled = 1

" Mapleader
let mapleader = ","

" Localleader
let maplocalleader = "-"

" Quick yanking to the end of the line
nnoremap Y y$

" Yank/paste to the OS clipboard with ,y and ,p
nnoremap <Leader>y "+y
nnoremap <Leader>Y "+y$
nnoremap <Leader>p "+p
nnoremap <Leader>P "+P

" Airline configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'gruvbox'
let g:airline_section_x = '%{PencilMode()}'

" Auto-save
:au InsertLeave <buffer> update 

" Compile LaTeX
map <S-b> :VimtexCompile  <CR>

" View PDF
map <S-b><S-v> :VimtexView <CR>

" Clean files
map <S-b><S-c> :VimtexClean  <CR>

" Toggle TOC
map <S-b><S-t> :VimtexTocOpen <CR>

" Vimtex Config
let g:vimtex_fold_enabled = 1
let g:vimtex_quickfix_open_on_warning = 0

" TogglePencil (soft/hard line breaks)
map <S-b><S-p> :SoftPencil <CR>
map <S-b><S-h> :TogglePencil <CR>

" Vim-Slime: set up Vim Terminal
let g:slime_target = "vimterminal"

" Set filetype of files with extension .tex to tex
let g:tex_flavor='latex'

" Enable pandoc functionality for markdown files 
let g:pandoc#filetypes#handled = ["pandoc", "markdown"]
let g:pandoc#filetypes#pandoc_markdown = 0

" Disable pandoc folding
let g:pandoc#modules#disabled = ["folding"]

" Turn off spelling
map <Leader>n :setlocal nospell<CR>
 
" Open terminal on the right
map <Leader>t :vertical :botright :term<CR>

" Some shortcuts for easymotion:
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" Enable NERDTree on startup
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Let NERDTree show hidden files
let NERDTreeShowHidden=1

" Close NERDTreee with Ctrl+k Ctrl+b
map <C-k><C-b> :NERDTreeToggle<CR>

" Distraction-free mode with Goyo
map <Leader>g :Goyo <CR>i<Esc>`^

" Screen dimensions for Goyo
let g:goyo_width = 100
let g:goyo_height = 100

" Remove indentation from a file
map <F3> :setl noai nocin nosi inde= <CR>

" Remove all indentation
filetype indent off

" Clear highlighting by pressing Enter (Return) in normal modemap
nnoremap <cr> :noh<CR><CR>:<backspace>

" Delete buffer
map <Leader>d :bd<CR>
 
" Yank all text
map <C-a> :%y+ <CR>

" Add Ctrl-V to gvim
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

" Move buffers
nmap <leader>1 :bfirst<CR>
nmap <leader>2 :bfirst<CR>:bn<CR>
nmap <leader>3 :bfirst<CR>:2bn<CR>
nmap <leader>4 :bfirst<CR>:3bn<CR>
nmap <leader>5 :bfirst<CR>:4bn<CR>
nmap <C-S-tab> :bprevious<CR>
nmap <C-tab>   :bnext<CR>
"" 
