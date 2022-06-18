ZSH_THEME="robbyrussell"
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

plugins=(
    git
    kubectl
    macos
)

if [ -f "$HOME/.workrc" ]; then
    source "$HOME/.workrc"
fi

export PATH=$PATH:$HOME/.bin
export PATH=$PATH:$HOME/.bin

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(direnv hook zsh)"
