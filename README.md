# My .dotfiles for M1 MacBook

## Including the following settings.
- Alacritty(terminal)
- lf(file manager on terminal)
- tmux + header scripts(battery status,wifi status). I don't have Copyright about these shell scripts.
- zsh
- vim
- Brew bundle list

### memo

- QuickLook plugin (qlmanage)
```
$ brew install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize suspicious-package apparency quicklookase qlvideo betterzip

$ xattr -r ~/Library/QuickLook

$ xattr -d -r com.apple.quarantine ~/Library/QuickLook
```

- Brew bundle list
```
brew bundle dump --describe
```

