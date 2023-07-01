# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/bash_profile.pre.bash" ]] && builtin source "$HOME/.fig/shell/bash_profile.pre.bash"

# Setting PATH for binary
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/usr/local/sbin"

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
export PATH="/usr/local/opt/python@3.9/libexec/bin:$PATH"

# Setting PATH
[ -d "$HOME/.sdkman" ] && export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

[ -d "$HOME/development/flutter" ] && export PATH="$PATH:$HOME/development/flutter/bin"
[ -d "/usr/bin/java" ] && export PATH="$PATH:/usr/bin/java"
[ -d "$HOME/.sdkman/candidates/java/current" ] && export JAVA_HOME="$HOME/.sdkman/candidates/java/current"
[ -z $JAVA_HOME ] && export PATH="$PATH:$JAVA_HOME/bin"
[ -d "$HOME/.nodebrew/current/bin" ] && export PATH="$PATH:$HOME/.nodebrew/current/bin"
[ -d "$HOME/go" ] && export GOPATH="$HOME/go"
[ -z $GOPATH ] && export PATH="$PATH:$GOPATH/bin"
[ -d "$HOME/.ruby/" ] && export GEM_HOME="$HOME/.ruby/"
[ -z $GEM_HOME ] && export PATH="$GEM_HOME/bin:$PATH"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

source /Library/Developer/CommandLineTools/usr/share/git-core/git-completion.bash

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/bash_profile.post.bash" ]] && builtin source "$HOME/.fig/shell/bash_profile.post.bash"