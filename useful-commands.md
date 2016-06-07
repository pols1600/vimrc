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
* `A` append at end of line
* `o` insert at new line below
* `x` delete character under cursor
* `dw` delete everything right from the cursor to the start of next word (and put it into the default register)
* `dd` delete line (and put it into the default register)
* `y` yank (copy)
* `Y` yank until the end of the line (custom)
* `p` paste
* `<Ctrl-a>` yank all text (custom)
* `r` replace character
* `ce` change word
* `/word` searches for _word_
* `:%s/old/new/g` replace all occurrences of _old_ with _new_ (add `w` for confirmation) 
* `<Ctrl-n>` autocomplete
* `:noh` turn off search highlighting 
* `<F4>` clear search highlighting (custom, use it in normal mode)
* `<F3>` remove indentation from current file (custom)
* `yyp` duplicate line
* `fa` jump to the next _a_ in line (use with any letter)
* `ta` place the cursor in the character that comes before _a_
* `:tabedit` open text in a new tab
* `<Ctrl-w> T` send current window to a new tab
* `gt` move to next tab
* `gT` move to previous tab
* `#gt` move to tab number #
* `:tabmove` move tab to the end
* `:tabmove 0` move tab to the beginning
* `:tabmove 1` move current tab to become the 2nd tab

## LaTeX

* `<Shift-b>` build a pdf with latexmk (custom)
* `<Ctrl-e>` and `<Ctrl-y>` scroll
* `item-tab`, `fig-tab`, `enum-tab` and many other snippets
* `<Ctrl-n>` autocomplete BibTeX entry (type the first letter of the reference within `\cite{}`, then `<Ctrl-n>`)

## Pandoc

* `:Pandoc --ascii` display diacritics in html output

## Spellcheck 

* `z=` in normal mode (click over the word first)

## R

* `<F6>` open a new vertical R terminal (custom)
* `<Ctrl-F6>` open a new horizontal R terminal (custom)
* `<F7>` open a new horizontal python terminal (custom)
* `<Ctrl-F7>` open a new horizontal python terminal (custom)
* `<F9>` send selected code to R (custom)

## Bash

* `<F2>` open a terminal (custom)

## Windows

* `<Ctrl-w> <` increase width (type can any number you prefer first)
* `<Ctrl-w> >` decrease width
* `<Ctrl-w> <Ctrl-R>` switch windows
* `<Ctrl-w> w` move cursor to another window
* `<Ctrl-w> H J K L` move window ( H: ←  J: ↓  K: ↑  L: → )
* `<Ctrl-w> S` horizontal splitting
* `:sp` horizontal splitting
* `<Ctrl-w> v` vertical splitting
* `:vs` vertical splitting
* `<Ctrl-w> Q` close window

