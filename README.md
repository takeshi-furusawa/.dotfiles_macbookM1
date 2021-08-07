# My .dotfiles for M1 MacBook

## How to install these .dotfiles into your enviroment.

- cd $HOME

- git clone *REPONAME*

- cd *REPONAME*

  

- Use "GNU Stow command": (This tool makes symbolic links into your home directory)

- ex.) $ stow alacritty

  

## Including the following settings.

- Brew's Bundle list

- zsh (settings)

- Alacritty(fastest terminal emulater settings)

- tmux + header scripts(battery status,wifi status). I forgot who has Copyright about these shell scripts.

- lf(file manager on terminal)

- vim


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
