
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

" Ale
Plugin 'w0rp/ale'

" Auto-save
Plugin '907th/vim-auto-save'

" Ayu theme
Plugin 'ayu-theme/ayu-vim'

" Dracula theme
Plugin 'dracula/vim'

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

" Limelight
Plugin 'junegunn/limelight.vim'

" Lion
Plugin 'tommcdo/vim-lion'

" Markdown
Plugin 'godlygeek/tabular'
Plugin 'gabrielelana/vim-markdown'

" Molokai theme
Plugin 'tomasr/molokai'

" NERDTree
Plugin 'scrooloose/nerdtree' 

" NERDTree git
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Nord theme
Plugin 'arcticicestudio/nord-vim'

" Pandoc
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax' 

" Palenight theme
Plugin 'drewtempelmeyer/palenight.vim'

" Pencil
Plugin 'reedes/vim-pencil'

" R
Plugin 'jalvesaq/Nvim-R'
Plugin 'gaalcaras/ncm-R'

" RMarkdown
Plugin 'vim-pandoc/vim-rmarkdown'

" Snippets
Plugin 'SirVer/ultisnips'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'Shougo/neosnippet.vim'
Plugin 'honza/vim-snippets'
Plugin 'ncm2/ncm2'
Plugin 'roxma/nvim-yarp'
Plugin 'ncm2/ncm2-ultisnips'
Plugin 'ncm2/ncm2-bufword'
Plugin 'ncm2/ncm2-tmux'
Plugin 'ncm2/ncm2-path'

" Split-Term
Plugin 'vimlab/split-term.vim'

" Surround
Plugin 'tpope/vim-surround'

" Supertab  
Plugin 'ervandew/supertab'

" Targets
Plugin 'wellle/targets.vim'

" Thesaurus
Plugin 'Ron89/thesaurus_query.vim'

" vimcmdline
Plugin 'jalvesaq/vimcmdline'

" Vim Lexical
Plugin 'reedes/vim-lexical'

" Vim Slime
Plugin 'jpalardy/vim-slime'

" Vimtex
Plugin 'lervag/vimtex'

" Vimwordy
Plugin 'reedes/vim-wordy'

" Write good
Plugin 'davidbeckingsale/writegood.vim'

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
set relativenumber				" Show relative line numbers
set showmatch                   " Highlight matching brace
set autoread                    " Reload files
set spelllang=en_gb             " British English
autocmd FileType plaintex,tex,latex syntax spell toplevel " spelling
autocmd FileType plaintex,tex,latex,md,markdown,bib,bibtex setlocal spl=en_gb spell
set visualbell                  " Use visual bell (no beeping)
set wildmenu                    " Show menu autocomplete options
set wildmode=longest,list
set guicursor=i:ver25-iCursor   " Cursor size
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
"set macligatures               " Ligatures 
"set guifont=Fira\ Code:h15     " Font size
set nospell                     " No spelling for all files
set modeline                    " Set variables specific to files
set completeopt+=menuone        " Autocomplete
set completeopt+=noselect
set shortmess+=c                " Shut off completion messages
set belloff+=ctrlg              " If Vim beeps during completion
hi SpellBad cterm=underline,bold ctermfg=red

" Gruvbox
syntax enable
let g:gruvbox_italic=1
let g:gruvbox_undercurl=1
let g:gruvbox_guisp_fallback="bg"
"colorscheme gruvbox
"set background=dark

" Ayu
set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
"colorscheme ayu

" Thesaurus
nnoremap <Leader>cs :ThesaurusQueryReplaceCurrentWord<CR>

" Palenight
set background=dark
colorscheme palenight
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif
let g:palenight_terminal_italics=1

" Set nospell
map <leader>n :setlocal nospell <CR>

" indentLines
let g:indentLine_setColors = 1
let g:indentLine_char      = '|'
let g:indentLine_enabled   = 1

" Auto-save
let g:auto_save        = 1
let g:auto_save_silent = 1
let g:auto_save_events = ["InsertLeave", "TextChanged", "FocusLost"]

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
nnoremap <C-a> :%y+ <CR>

" vimcmdline mappings
let cmdline_map_start          = '<LocalLeader>s'
let cmdline_map_send           = '<Space>'
let cmdline_map_send_and_stay  = '<LocalLeader><Space>'
let cmdline_map_source_fun     = '<LocalLeader>f'
let cmdline_map_send_paragraph = '<LocalLeader>p'
let cmdline_map_send_block     = '<LocalLeader>b'
let cmdline_map_quit           = '<LocalLeader>q'

" vimcmdline options
let cmdline_vsplit      = 1      " Split the window vertically
let cmdline_esc_term    = 1      " Remap <Esc> to :stopinsert in Neovim's terminal
let cmdline_in_buffer   = 1      " Start the interpreter in a Neovim's terminal
let cmdline_term_height = 15     " Initial height of interpreter window or pane
let cmdline_term_width  = 80     " Initial width of interpreter window or pane
let cmdline_tmp_dir     = '/tmp' " Temporary directory to save files
let cmdline_outhl       = 1      " Syntax highlight the output
let cmdline_auto_scroll = 1      " Keep the cursor at the end of terminal (nvim)

" Airline configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme                      = 'gruvbox'

" Auto-save
:au InsertLeave <buffer> update

" Let NERDTree show hidden files
let NERDTreeShowHidden = 0

" Close NERDTreee with Ctrl+k Ctrl+b
map <C-k><C-b> :NERDTreeToggle<CR>

" Lion
let g:lion_squeeze_spaces = 1
let b:lion_squeeze_spaces = 1

" Write good
noremap <Leader>wg :WritegoodToggle<CR>

" R commands
let R_show_args = 0         " show the arguments for functions with autocompletion
let R_args_in_stline = 0    " do not show arguments in statusline
let R_assign = 0            " do not convert _ into <-, annoying!
let R_insert_mode_cmds = 1  " allow R commands in insert mode
let R_term_cmd = 'st -n R'  " command to execute R in my terminal , with window name R
let R_clear_line = 0        " do not clear line before executing a command, sadly does not work with st
let R_args = ['--no-save']  " call R with the --no-save option
autocmd VimLeave * if exists("g:SendCmdToR") && string(g:SendCmdToR) != "function('SendCmdToR_fake')" | call RQuit("nosave") | endif     " exit R when you exit Vim

" RMarkdown
noremap <Leader>md :RMarkdown pdf<CR> 

" nc2m
au User Ncm2Plugin call ncm2#register_source({
        \ 'name' : 'vimtex',
        \ 'priority': 9, 
        \ 'subscope_enable': 1,
        \ 'complete_length': 1,
        \ 'scope': ['tex'],
        \ 'mark': 'tex',
        \ 'word_pattern': '\w+',
        \ 'complete_pattern': g:vimtex#re#ncm,
        \ 'on_complete': ['ncm2#on_complete#omni', 'vimtex#complete#omnifunc'],
        \ })

" Compile LaTeX
map <S-b> :VimtexCompile  <CR>

" View PDF
map <S-b><S-v> :VimtexView <CR>

" Clean files
map <S-b><S-c> :VimtexClean  <CR>

" Toggle TOC
map <S-b><S-t> :VimtexTocOpen <CR>

" Vimtex Config
let g:vimtex_fold_enabled             = 1
let g:vimtex_quickfix_open_on_warning = 0
let g:vimtex_compiler_latexmk         = {'callback' : 0}
let g:tex_conceal = ''

" Limelight config
" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240
let g:limelight_default_coefficient = 0.7
nmap <Leader>l :Limelight!! <CR>i<Esc>`^

" Select all
noremap <C>a ggXG<CR>

" Copy to clipboard
noremap <C>c :w !pbcopy<CR>

" Paste from clipboard
noremap <C>v :r !pbpaste<CR> 

" Goyo integration
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" Close tab
nmap <Leader>d :bd <CR>

" Vim-Slime: set up tmux
let g:slime_target = "tmux"

" Set filetype of files with extension .tex to tex
let g:tex_flavor='latex'

" Enable pandoc functionality for markdown files 
let g:pandoc#filetypes#handled         = ["pandoc", "markdown"]
let g:pandoc#filetypes#pandoc_markdown = 0

" Disable pandoc folding
let g:pandoc#modules#disabled = ["folding"]

" Pandoc syntax conceal
let g:pandoc#syntax#conceal#use = 0

" Open terminal on the right
map <Leader>t :VTerm<CR>

" R
nmap <Leader>r <Plug>RStart 
nmap <C><CR> <Plug>RDSendSelection 
nmap <Space> <Plug>RDSendLine
nmap <silent> <LocalLeader>dj :call RAction("head")<CR>
nmap <silent> <LocalLeader>dk :call RAction("tail")<CR>
nmap <silent> <LocalLeader>dl :call RAction("levels")<CR>
nmap <silent> <LocalLeader>ds :call RAction("summary")<CR>
let R_nvimpager = "vertical"
let R_rconsole_height = 25  
let R_args_in_stline = 1
let r_syntax_folding = 1
autocmd filetype r inoremap $ $<C-X><C-O>
autocmd filetype rmd inoremap @ @<C-X><C-O>

" Some shortcuts for easymotion:
" <Leader>f{char} to move to {char}{char}
map  <Leader>f <Plug>(easymotion-bd-f2)
nmap <Leader>f <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" Distraction-free mode with Goyo
map <Leader>g :Goyo <CR>i<Esc>`^

" Screen dimensions for Goyo
let g:goyo_width  = 100
let g:goyo_height = 100

" Pencil toggle soft mode
map <Leader>s :PencilToggle <CR>i<Esc>`^
let g:pencil#wrapModeDefault = 'soft'

" Remove indentation from a file
map <F3> :setl noai nocin nosi inde= <CR>

" Remove all indentation
filetype indent off

" Clear highlighting by pressing Enter (Return) in normal modemap
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

