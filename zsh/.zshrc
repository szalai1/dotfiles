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

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/peterszalai/.sdkman"
[[ -s "/Users/peterszalai/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/peterszalai/.sdkman/bin/sdkman-init.sh"

export PATH=$PATH:$HOME/.bin
export PATH=$PATH:$HOME/Downloads/flutter/bin
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
