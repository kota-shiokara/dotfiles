# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"

typeset -U path PATH
path=(
    /usr/local/bin/git

    /opt/homebrew/bin(N-/)
    /opt/homebrew/sbin(N-/)
    /usr/bin
    /usr/sbin
    /bin
    /sbin
    /usr/local/bin(N-/)
    /usr/local/sbin(N-/)
    /Library/Apple/usr/bin
)

# 補完を有効に
autoload -Uz compinit && compinit
zstyle ':completion:*:(cd|less):*' matcher 'm:{a-z}={A-Z}'

source $HOME/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# SDKMAN
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

eval "$(anyenv init -)"

autoload -Uz colors && colors
PROMPT="%F{green}%n%f %F{cyan}%3~%f $ "

alias ls="ls -a"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
