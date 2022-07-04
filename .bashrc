# git関係のエイリアス
alias gst='git status'
alias gstt='git status -uno'
alias gadd='git add'
alias gcommit='git commit -m'
alias gpush='git push origin'
alias gpull='git pull origin'
alias gco='git checkout'
function gcob() {
    git checkout -b $1
}
function gcobb() {
    git checkout -b $1 origin/$1
}

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
alias gbr='git branch'

alias la="ls -a"
