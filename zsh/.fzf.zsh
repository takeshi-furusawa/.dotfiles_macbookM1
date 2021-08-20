# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/takeshi/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/Users/takeshi/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/takeshi/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/takeshi/.fzf/shell/key-bindings.zsh"
