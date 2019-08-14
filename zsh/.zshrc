ZSH_THEME="robbyrussell"
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

plugins=(
    git
    kubectl
    osx
)

if [ -f "$HOME/.workrc" ]; then
    source "$HOME/.workrc"
fi



#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/peterszalai/.sdkman"
[[ -s "/Users/peterszalai/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/peterszalai/.sdkman/bin/sdkman-init.sh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
