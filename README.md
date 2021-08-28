# My .dotfiles for M1 MacBook

## How to install these .dotfiles into your enviroment.

- cd $HOME

- git clone *REPONAME*

- cd *REPONAME*

  

- Use "GNU Stow command": (This tool makes symbolic links into your home directory)

- ex.) $ stow -v alacritty tmux vim

  

## Including the following settings.

- Brew's Bundle list

- install font family(Hack Nerd Font Mono) not MesloLGS NF
```
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
```

- zsh (settings)

- Alacritty(fastest terminal emulater)

- tmux + header scripts(battery status,wifi status). I forgot who has Copyright about these shell scripts.

---

###  nvim + fzf (with vimplugin) + ripgrep/ag  


```
- ~/.config/nvim
├── plugged/
├── maps.vim
├── macos.vim
├── init.vim
├── plug.vim
└── fzf.vim
```

- vim-plug (install to zsh env)
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

- plug.vim

```
" --------------------------------------------------------------------------------                               
" Plugin manager(vim-plug) :

"  Reload .vimrc and
"     :PlugInstall/ :PlugClean /:PlugUpgrade
" --------------------------------------------------------------------------------
"Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'

call plug#begin('~/.config/nvim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
Plug 'leafgarland/typescript-vim'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'

Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'

" Stable version of coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}



call plug#end()

" --------------------------------------------------------------------------------
" for lightline.vim Plugin
" --------------------------------------------------------------------------------
let g:lightline = {
      \ 'colorscheme': 'one',
      \ }
```

### coc(nvim inteli sence) 
```
extensions@ ~/.dotfile/nvim/.config/coc/extensions
├── coc-clangd@0.14.0
├── coc-go@0.13.3
├── coc-html@1.4.1
├── coc-json@1.3.6
├── coc-pyright@1.1.164
├── coc-snippets@2.4.6
├── coc-tsserver@1.8.6
├── coc-vimlsp@0.12.3
├── coc-yaml@1.4.2
└── coc-css@
```
```
❯ ll nvim/.config/nvim/colors
.rw-r--r-- 20k takeshi staff 28 8 22:30  hybrid.vim
```

## First preparing

- install xcode-commanline-tool
- install homeBrew
- install zsh from brew
- install oh-my-zsh
- set up tp p10k configration.

-  Set default shell to  brew's zsh.  
`$ sudo vi /etc/shells`
- append into this file 
`/opt/homebrew/bin/zsh`
- chsh      
`$ chsh -c /opt/homebrew/bin/zsh`
- check
`$ echo $SHELL`

### memo

- QuickLook plugin (qlmanage)
```
$ brew install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize suspicious-package apparency quicklookase qlvideo betterzip

$ xattr -r ~/Library/QuickLook

$ xattr -d -r com.apple.quarantine ~/Library/QuickLook
```

- Brew bundle list
```
$ brew bundle dump --describe
```
