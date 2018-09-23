# Useful Commands

Here is a list of commands that I regularly use. Some of them are customised. 

## Basic commands

* `i` writing mode
* `Esc` go back to normal mode 
* `v` visual mode (use to select text)
* `:h` help
* `:w` save file
* `:q` quit
* `:q!` quit without saving
* `:qall` quit all windows at once
* `:e` edit file (then enter file address)
* `u` undo
* `<Ctrl-R>` redo
* `.` repeat last change
* `h j k l` move cursor ( h: ←  j: ↓  k: ↑  l: → )
* `0` go to beginning of the line
* `$` go to the end of the line
* `A` append at end of line
* `o` insert at new line below
* `Ctrl-Shift-B` page up
* `Ctrl-Shift-F` page down
* `Ctrl-Y` move view pane up
* `Ctrl-E` move view pane down
* `<Leader>f{character}` move to {character}
* `<Leader>L` move to line
* `<Leader>w` move to word
* `x` delete character under cursor
* `dw` delete everything right from the cursor to the start of next word (and put it into the default register)
* `dd` delete line (and put it into the default register)
* `G` go to last line
* `100gg`go to the 100th line
* `gg` go to the first line
* `ˆ` jump to the first non-blank character of the line
* `%` move to matching character (default supported pairs: '()', '{}', '[]' - use :h matchpairs in vim for more info)
* `˜` switch case
* `<Ctrl-Tab>` go to next buffer (custom)
* `<Ctrl-e>` and `<Ctrl-y>` scroll
* `<Ctrl-Shift-F>` go down one window
* `<Ctrl-Shift-B>` go up one window
* `<Leader>1` go to buffer #1
* `/pattern` search for pattern
* `?pattern` search backward for pattern
* `/pattern/e+1` move to 1 space after the end of the word
* `n` repeat seach
* `*` search for next word under cursor
* `#` search for previous word under cursor
* `:%s/old/new/gc` replace all old with new throughout file with confirmation
* `:noh` remove highlighting of search matches
* `r` replace a single character
* `J` join line below to the current one with one space in between
* `gJ` join line below to the current one without space in between
* `y` yank (copy)
* `Y` yank until the end of the line (custom)
* `p` paste
* `<Ctrl-a>` yank all text (custom)
* `r` replace character
* `ce` change word
* `<Ctrl-n>` autocomplete
* `<F3>` remove indentation from current file (custom)
* `yyp` duplicate line
* `fa` jump to the next _a_ in line (use with any letter)
* `ta` place the cursor in the character that comes before _a_
* `:tabedit` open text in a new tab
* `gt` move to next tab
* `gT` move to previous tab
* `#gt` move to tab number #
* `<Leader> t` open new vertical terminal (custom)
* `#gt` move to tab number #
* `#gt` move to tab number #
* `:tabmove` move tab to the end
* `:tabmove 0` move tab to the beginning
* `:tabmove 1` move current tab to become the 2nd tab
* `<Ctrl-w> l` move focus to the right window (use `h` to move to the right window, `j` below, `k` above)
* `<Ctrl-w> L` move window to the right (note the capital letters. Use it with `H`, `J` and `K` too)
* `<Ctrl-w> c` close window

## LaTeX

* `<Shift-b>` build a pdf with latexmk (custom)
* `<Shift-b><Shift-v>` view pdf (custom)
* `<Shift-b><Shift-c>` clean auxiliary files
* `itemize-tab` (itemize), `fig-tab` (figure), `enum-tab` (enumerate), `it-tab` (italics), `bf-tab` (boldface), `fig-tab` (figure), `sec-tab`(section), `eql` (equation) 
* `<Ctrl-x><Ctrl-n>` autocomplete BibTeX entry (type the first letter of the reference within `\cite{}`, then `<Ctrl-x><Ctrl-n>`)
* `<Ctrl-x><Ctrl-o>` opens a list of BibTeX entries within `\cite{}`
* `<Shift-b><Shift-p>` turns soft linebreaks on
* `<Shift-b><Shift-h` turn hard linebreaks on (default)
* `:NeoTexOn` turn live pdf preview on

## Pandoc

* `:Pandoc --ascii` display diacritics in html output

## Spellcheck 

* `z=` in normal mode (click over the word first)
* `zG` add new word to dictionary

## R

* `<Ctrl-c><Ctrl-c>` send code to R via `vim-slime`

## Windows

* `<Ctrl-w> <` increase width (type can any number you prefer first)
* `<Ctrl-w> >` decrease width
* `<Ctrl-w> <Ctrl-R>` switch windows
* `<Ctrl-w> T` send current window to a new tab
* `<Ctrl-w> w` move cursor to another window
* `<Ctrl-w> H J K L` move window ( H: ←  J: ↓  K: ↑  L: → )
* `<Ctrl-w> S` horizontal splitting
* `:sp` horizontal splitting
* `<Ctrl-w> v` vertical splitting
* `:vs` vertical splitting
* `<Ctrl-w> Q` close window

