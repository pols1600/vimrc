# Vim directory

My configuration files and plugins for [Vim](http://en.wikipedia.org/wiki/Vim_(text_editor)). 

## Set up instructions:

* Install [vim](http://www.vim.org/download.php).

* Download [Vundle](https://github.com/VundleVim/Vundle.vim):

`$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

* Download this repository and copy the contents to your home folder

```
$ git clone https://github.com/danilofreire/vimdir
$ cd vimdir/
$ mv .vimrc /home/username/
```

* Open `.vimrc` and type `:PluginInstall`. From the command line:

`$ vim .vimrc +PluginInstall +qall`
