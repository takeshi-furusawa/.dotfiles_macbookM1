# Setup fzf
# ---------
if [[ ! "$PATH" == *~/.vim/bundles/repos/github.com/junegunn/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}~/.vim/bundles/repos/github.com/junegunn/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "~/.vim/bundles/repos/github.com/junegunn/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/takeshi/.vim/bundles/repos/github.com/junegunn/fzf/shell/key-bindings.zsh"
