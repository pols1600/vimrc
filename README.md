# Vim directory

My configuration files and plugins for [Vim](http://en.wikipedia.org/wiki/Vim_(text_editor)). Please install Vim 8 to follow the instructions below.

## Set up instructions:

* Install Vim 8 for Ubuntu:
```
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install vim
```

If you're using MacOS, I recommend [iterm2](https://www.iterm2.com/).

* Download [Vundle](https://github.com/VundleVim/Vundle.vim):
```
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

* Download this repository and copy the contents to your home folder
```
$ git clone https://github.com/danilofreire/vimdir
$ cd vimdir/
$ mv .vimrc /home/username/
```

* Open `.vimrc` and type `:PluginInstall`. From the command line:
```
$ vim .vimrc +PluginInstall +qall
```

* Ignore the warning and copy the [molokai.vim](https://raw.githubusercontent.com/danilofreire/vimdir/master/.vim/colors/molokai.vim) file to `~/.vim/colors`. I currently use [gruvbox](https://github.com/morhetz/gruvbox), but if you like molokai, go ahead.

* I'm also using [Fira Code Regular](https://github.com/tonsky/FiraCode) as my main font. If you're on Ubuntu, install the font with `apt get install fonts-firacode` or by following [these instructions](https://stevescott.ca/2016-10-20-installing-the-fira-font-in-ubuntu.html). This is how the editor looks like: 

![](https://github.com/danilofreire/vimrc/raw/master/vim.png)

I hope you enjoy it! :)
