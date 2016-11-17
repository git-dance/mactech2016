function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\e[0;33m\]"
GREEN="\[\e[0;32m\]"
LTBLUE="\[\e[0;36m\]"
BLUE="\[\e[0;34m\]"
PURPLE="\[\e[0;35m\]"
NO_COLOR="\[\e[m\]"

export PS1="$BLUE\u$NO_COLOR@$GREEN\h $YELLOW\W$LTBLUE\$(parse_git_branch)$NO_COLOR\$ "
