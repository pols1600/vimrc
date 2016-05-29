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
* `r` replace character
* `ce` change word
* `/word` searches for _word_
* `:%s/old/new/g` replace all occurrences of _old_ with _new_ (add `w` for confirmation) 
* `:setl noai nocin nosi inde=` remove indentation from current file

## LaTeX

* `<Shift-b>` build a pdf with latexmk (custom)
* `<Ctrl-x><Ctrl-e>` and `<Ctrl-x><Ctrl-y>` scroll
* `item-tab`, `fig-tab`, `enum-tab` and many other snippets

## Spellcheck 

* `z=` in normal mode (click over the word first)

## R

* `<Ctrl-R>` open a new R terminal (custom)
* `<Ctrl-R><Ctrl-h>` open a new horizontal R terminal (custom)
* `<F9>` send selected code to R (custom)

## Bash

* `<F2>` open a terminal (custom)

## Windows

* `<Ctrl-w> <` increase width (type can any number you prefer first)
* `<Ctrl-w> >` decrease width
* `<Ctrl-w> <Ctrl-R>` switch windows
* `<Ctrl-w> w` move cursor to another window
* `<Ctrl-w> h j k l` move window ( h: ←  j: ↓  k: ↑  l: → )
* `<Ctrl-w> S` horizontal splitting
* `:sp` horizontal splitting
* `<Ctrl-w> v` vertical splitting
* `:vs` vertical split
* `<Ctrl-w> Q` close window

