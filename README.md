# (Neo)vim Directory

My configuration files and plugins for [Neovim](https://neovim.io/). They work fine with regular [vim](http://www.vim.org) too.

## Set up instructions:

* Install the latest version of neovim with [homebrew](https://brew.sh/):
```
brew install neovim
```

I recommend you to install [iterm2](https://www.iterm2.com/) and [tmux](https://github.com/tmux/tmux) too:
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
mv .vimrc /Users/username/
```

* Create a `~/.config/nvim/init.vim` file with the following content:

```
set runtimepath^=/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
```
... or just copy the [`init.vim`](https://raw.githubusercontent.com/danilofreire/vimrc/master/init.vim) file above.

* Open `.vimrc` and type `:PluginInstall`. From the command line:
```
nvim .vimrc +PluginInstall +qall
```

* I included many themes in the `.vimrc` file, such as [gruvbox](https://github.com/morhetz/gruvbox), [Molokai](https://github.com/tomasr/molokai), [Nord](https://github.com/arcticicestudio/nord-vim), [OneDark](https://github.com/joshdick/onedark.vim), and [Palenight](https://github.com/drewtempelmeyer/palenight.vim). They are the ones I like the most. I have also added the [rainglow](https://github.com/rainglow/vim) plugin, which has 320+ themes for vim. Check out the themes [here](https://rainglow.io/preview/) and choose your favourite!

* I'm using [Fira Code Regular](https://github.com/tonsky/FiraCode) as my main font. You can install it with:
```
brew tap caskroom/fonts
brew cask install font-fira-code
```

And this is how the editor looks like with the default configurations: 

![](https://github.com/danilofreire/vimrc/raw/master/neovim.png)

I hope you enjoy using Neovim! :)
