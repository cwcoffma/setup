# Editor settings
export PS1='\n\[\e[0;36m\]\u \[\e[0m\][\w]\n\$ '
export EDITOR=vim
 
# Append commands in real time to the bash command history file (~/.bash_history)
# instead of overwriting it. Avoid duplicates.
export HISTCONTROL=ignoredups
shopt -s histappend
export PROMPT_COMMAND='history -a'
export HISTSIZE=1000
export HISTFILESIZE=1000

# Basic aliases
alias ls='ls -a'
alias cp='cp -iv'
alias mv='mv -iv'
alias ..='cd ..'
alias cl='clear'
alias wf='cd ~/workspace/workflow/'
alias commons='cd ~/workspace/uiowa-commons'
alias mkdir='mkdir -pv'
alias path='echo -e ${PATH//:/\\n}'
alias ~='cd ~'
alias reload='source ~/.profile'
alias bashrc='vim ~/.bashrc'
alias prof='vim ~/.profile'

# ------------------------------------------------------------
# Recursively delete .DS_Store files
# -------------------------------------------------------------------
alias cleands="find . -type f -name '*.DS_Store' -ls -delete"

# if user is not root, do via sudo #
if [ $UID -ne 0 ]; then
    alias apt-get='sudo apt-get'
fi
