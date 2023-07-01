# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/bashrc.pre.bash" ]] && builtin source "$HOME/.fig/shell/bashrc.pre.bash"
# alias gdiff='git diff develop'
function gdiff() {
    defaultBranch=$(git remote show origin | grep 'HEAD branch' | rev | cut -d' ' -f 1 | rev)
    echo "default branch is $defaultBranch"
    git diff $defaultBranch $1
}
# alias gdiff-file='git diff --name-only develop'
function gdiff-title() {
    defaultBranch=$(git remote show origin | grep 'HEAD branch' | rev | cut -d' ' -f 1 | rev)
    echo "default branch is $defaultBranch"
    git diff --name-only $defaultBranch
}

alias la='ls -a'

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/bashrc.post.bash" ]] && builtin source "$HOME/.fig/shell/bashrc.post.bash"
