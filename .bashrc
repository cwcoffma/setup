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


# Bash aliases
alias ls='ls -al'
alias cp='cp -iv'
alias mv='mv -iv'
alias ..='cd ..'
alias c='clear'
alias diff='colordiff'
alias mkdir='mkdir -pv'
alias path='echo -e ${PATH//:/\\n}'
alias ~='cd ~'


# OSX specific
alias zzz='pmset sleepnow'
alias reload='source ~/.bash_profile'
alias edita='vim ~/.bashrc'
alias editp='vim ~/.profile'

# Recursively delete .DS_Store files
# -------------------------------------------------------------------
alias cleanupDS="find . -type f -name '*.DS_Store' -ls -delete"

# Show/Hide hidden files in Finder
# -------------------------------------------------------------------
alias finderShowHidden='defaults write com.apple.finder ShowAllFiles TRUE'
alias finderHideHidden='defaults write com.apple.finder ShowAllFiles FALSE'

# Recommended 'top' invocation to minimize resources
# ------------------------------------------------------------
#  Taken from this macosxhints article
#  http://www.macosxhints.com/article.php?story=20060816123853639
# ------------------------------------------------------------
alias ttop="top -R -F -s 10 -o rsize"


# UI Projects
alias workflow='cd ~/workspace/workflow/'
alias uiowa-commons='cd ~/workspace/uiowa-commons'


# if user is not root, do via sudo #
if [ $UID -ne 0 ]; then
    alias apt-get='sudo apt-get'
fi
