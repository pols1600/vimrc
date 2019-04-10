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

* Please note that I have disable the arrow keys and the mouse to force me to use vim's own shortcuts. The arrow keys function normally when in insert mode. If you would like to revert these changes, please uncomment (remove the `"` symbol) the following line:
```
set mouse=a 
```

Also, delete these lines to activate the arrow keys:
```
" Deactivate arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
```

* I included many themes in the `.vimrc` file, such as [gruvbox](https://github.com/morhetz/gruvbox), [Molokai](https://github.com/tomasr/molokai), [Nord](https://github.com/arcticicestudio/nord-vim), [OneDark](https://github.com/joshdick/onedark.vim), and [Palenight](https://github.com/drewtempelmeyer/palenight.vim). They are the ones I like the most. I have also added the [rainglow](https://github.com/rainglow/vim) plugin, which has 320+ themes for vim. Check out the themes [here](https://rainglow.io/preview/) and choose your favourite!

* If you want to make your [vim-airline toolbar](https://github.com/vim-airline/vim-airline) look nice, please download the [powerline patched fonts](https://github.com/powerline/fonts):
```
git clone git@github.com:powerline/fonts.git
```

Then install the font you prefer and configure your terminal to use it. I use [`FiraMono`](https://github.com/powerline/fonts/tree/master/FiraMono).   

And this is how the editor looks like with the default configurations: 

![](https://github.com/danilofreire/vimrc/raw/master/neovim.png)

I hope you enjoy using Neovim! :)
