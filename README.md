# My .dotfiles for M1 MacBook

## How to install this .dotfiles to your enviroment.

- cd $HOME

- git clone *REPONAME*

- cd *REPONAME*

  

- Use "stow": (This tool makes symbolink links into your home directory)

- ex.) $ stow alacritty

  

## Including the following settings.

- Alacritty(terminal)

- tmux + header scripts(battery status,wifi status). I don't have Copyright about these shell scripts.

- lf(file manager on terminal)

- vim

- zsh

- Brew's Bundle list

  

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
