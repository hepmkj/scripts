# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias ls="ls --color"
alias c='clear'
alias ll='ls -ltr'
alias vi="/usr/local/bin/vim"

#aliases mvn
#Maven
alias mdt="mvn dependency:tree"
alias mda="mvn dependency:analyze"
alias mst="mvn clean install -DskipTests"
alias mci="mvn clean install"
alias mc="mvn clean"
alias mct="mvn clean test"

#git
alias gcd="git checkout develop"
alias gch="git checkout "
alias gcb="git checkout -b "
alias gs="git status"
alias gd="git diff"
alias gco="git commit -m "
alias gb="git branch"
alias gbd="git branch -D "
alias gl="git log"
alias gp="git pull"


#Kubernets
alias k="kubectl"
source <(kubectl completion bash | sed s/kubectl/k/g)

export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-11.0.8.10-0.el7_8.x86_64"

#go
export GO_ROOT="/usr/local/go"
export PATH=${PATH}:"${GO_ROOT}/bin"
