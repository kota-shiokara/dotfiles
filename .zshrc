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
    '/Users/ikanoshiokara/Library/Application Support/JetBrains/Toolbox/scripts'
)

# 補完を有効に
autoload -Uz compinit && compinit
zstyle ':completion:*:(cd|less):*' matcher 'm:{a-z}={A-Z}'

if [ -f $HOME/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
    source $HOME/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# SDKMAN
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

eval "$(anyenv init -)"

autoload -Uz colors && colors
PROMPT="%F{cyan}%3~%f $ "

alias ls="ls -a"
# 現在のディレクトリの絶対パスをクリップボードにコピー
alias cdir="echo -n "$(pwd)" | pbcopy"
alias gbclean="git branch | grep -v \"main|develop\" | xargs -n 1 git branch -d"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
