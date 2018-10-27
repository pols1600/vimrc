# Vim directory

My configuration files and plugins for [Neovim](https://neovim.io/). 

## Set up instructions:

* If you have [homebrew](https://brew.sh/) installed, just type the following line to install Neovim:
```
brew install neovim
```

I recommend you to download [iterm2](https://www.iterm2.com/) and [tmux](https://github.com/tmux/tmux) too:
```
brew cask install iterm2
brew install tmux
```

* Download [Vundle](https://github.com/VundleVim/Vundle.vim):
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

* Download this repository and copy the contents to your home folder
```
git clone https://github.com/danilofreire/vimdir
cd vimdir/
mv .vimrc /home/username/
```

* Open `.vimrc` and type `:PluginInstall`. From the command line:
```
nvim .vimrc +PluginInstall +qall
```

* Ignore the warning and copy the [molokai.vim](https://raw.githubusercontent.com/danilofreire/vimdir/master/.vim/colors/molokai.vim) file to `~/.vim/colors`. I currently use [gruvbox](https://github.com/morhetz/gruvbox), but if you like molokai, go ahead.

* I'm also using [Fira Code Regular](https://github.com/tonsky/FiraCode) as my main font. You can install it with:
```
brew tap caskroom/fonts
brew cask install font-fira-code
```

And this is how the editor looks like: 

![](https://github.com/danilofreire/vimrc/raw/master/neovim.png)

I hope you enjoy it! :)
