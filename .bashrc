

# for history
export HISTTIMEFORMAT="%F %T "
export HISTFILESIZE=1000000000 
export HISTSIZE=1000000

export EDITOR=vim
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# master
alias cp="cp -i"
alias rm="rm -iv"
alias gls="gls --color"
alias ll="ls -lFG"
alias lt="ls -ltr"
alias mv="mv -iv"

alias vi="vim"
alias vid="vimdiff"

# alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias ip="curl ifconfig.me"

#grep
export GREP_OPTIONS='--color=always'
export GREP_COLOR='1;35;40'



alias grape='telnet -l tkkim 211.233.30.76'
alias daumgate='ssh daumgate@daumgate.daumcorp.com'
alias vpndaumgate='ssh -i daumgate_vpn daumgate@daumgate.daumcorp.com'

# java
alias changeJDK8="export JAVA_HOME=`/usr/libexec/java_home -v 1.8`"
alias changeJDK7="export JAVA_HOME=`/usr/libexec/java_home -v 1.7`"
alias changeJDK6="export JAVA_HOME=`/usr/libexec/java_home -v 1.6`"
export JAVA_HOME=`/usr/libexec/java_home -v 1.7`


#gradle
export GRADLE_TOPS="-Dfile.encoding=UTF-8"


[ -f ~/.bash_prompt ] && source ~/.bash_prompt
[[ -s "/Users/bistros/.gvm/bin/gvm-init.sh" ]] && source "/Users/bistros/.gvm/bin/gvm-init.sh"

