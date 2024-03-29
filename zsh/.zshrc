# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="/Users/takeshi/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
HIST_STAMPS="yyyy-mm-dd"

alias zsh='/opt/homebrew/bin/zsh'
#^^^^^^^^^^^^^^^^^^^
# PROXY setting (changed by './networkselect.sh |ConnectMe|VPN|HOME')
#source ~/PROXY_CLEAR.sh
#^^^^^^^^^^^^^^^^^^^

# ----------------------------------------------
# Alacritty color settings
# ----------------------------------------------
COLOR_node="nord.yaml"
COLOR_material="material_theme_mod.yaml"
alias colorNode="alacritty-colorscheme -V apply $COLOR_node"
alias colorMate="alacritty-colorscheme -V apply $COLOR_material"
alias toggle="alacritty-colorscheme -V toggle  $COLOR_node $COLOR_material"

##########################################################################
# Plugin
##########################################################################
plugins=(
    macos
    web-search
    git
    aws
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-completions
    last-working-dir
    autopep8
    z
)
# osx:
#     ofd(openi finder terminal's pwd)
#     pfd(path of finder's directory
#     pfs(path of finder's selectfile)
#     cfd(cd finder's directory)

# for zsh-completions
autoload -U compinit && compinit

###########################################################################
# READ HERE!!!
source ~/.oh-my-zsh/oh-my-zsh.sh
###########################################################################

#------------------------------------------------------------------------------
# User configuration
#------------------------------------------------------------------------------
export LANG=ja_JP.UTF-8
export APPS=/Applications
export MANPATH="/usr/local/man:$MANPATH"
export EDITOR='nvim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"
source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#------------------------------------------------------------------
# m1 brew
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/ruby/lib"
export CPPFLAGS="-I/opt/homebrew/opt/ruby/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/ruby/lib/pkgconfig"

# python
export PYENV_ROOT="/opt/homebrew/bin/"
export PATH="/opt/homebrew/opt/python@3.9/libexec/bin:$PATH"
export PATH="/opt/homebrew/lib/python3.9/site-packages:$PATH"

# java(brew:open-jdk)
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"

#------------------------------------------------------------------
# my alias
alias vi='nvim'
alias vim='nvim'
alias view='nvim -R'
#alias ls='ls -aG'
#alias ll='ls -latrGa'
alias ls="exa -a -snew --icons"
alias ll="exa -l -a -g -snew --icons"
alias lt="ll --tree --level=3"
alias h='history'
alias update="source ~/.zshrc"
alias updatetmux="tmux source-file ~/.tmux.conf"
alias ghub='hub browse'

# quick -look command line
alias ql='qlmanage -p "$@" >& /dev/null'

# modify open
function op() {
    if [ -z "$1" ]; then
        open .
    else
        open "$@"
    fi
}

export PATH="/opt/homebrew/opt/icu4c/bin:$PATH"
export PATH="/opt/homebrew/opt/icu4c/sbin:$PATH"

# ----------------------------------------------------------------------------------------------
# fzf ( Amazing tool.... ) https://github.com/junegunn/fzf
#    ex.) Esc-c, Ctrl + r, Ctrl + t, cd **<TAB>, kill -9 **<TAB>, cd **<TAB>
#    in vim) fzf, ls
# ----------------------------------------------------------------------------------------------
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

