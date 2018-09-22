# Vim directory

My configuration files and plugins for [Vim](http://en.wikipedia.org/wiki/Vim_(text_editor)). Please install Vim 8 to follow the instructions below.

## Set up instructions:

* Install Vim 8 for Ubuntu:
```
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install vim
```

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

* Ignore the warning and copy the [molokai.vim](https://raw.githubusercontent.com/danilofreire/vimdir/master/.vim/colors/molokai.vim) file to `~/.vim/colors`

* Enjoy it! :)
