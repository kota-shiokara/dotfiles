# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"

# 補完を有効に
autoload -Uz compinit && compinit

source $HOME/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# SDKMAN
export SDKMAN_DIR="/Users/kota/.sdkman"
[[ -s "/Users/kota/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/kota/.sdkman/bin/sdkman-init.sh"

eval "$(anyenv init -)"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"