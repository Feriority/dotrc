# ENV
export EDITOR=vim
export VISUAL=vim
export PAGER=less
export LESS="-R"

if [[ FreeBSD == $(uname) ]] ; then
	alias ls='ls -G'
else
	alias ls='ls --color'
fi

alias tree='tree -C'

alias clc="clear"
alias vi="vim"
alias emacs="vim"
alias ragequit='exit'
alias rq='ragequit'
alias cb='cd $OLDPWD'
alias la='ls -a'
alias ll='ls -l'
alias lal='ls -al'
alias lla='lal'
alias go-go-gadget='sudo'
alias ggg='go-go-gadget'
alias cgrep="grep --color=always"
alias shove="git push origin HEAD"

# YELP
alias pfc="pf --color=always"
alias tfc="tf --color=always"
alias jfc="jf --color=always"
alias sb='sandbox -v bash'
alias ym='cd ~/pg/yelp-main/'

alias remake='make clean; make clean-config; make'
alias nukefromorbit='make clean; make clean-config; git clean -xfd; make; pgctl restart'
alias buildbotdb='mysql -u yelpdev -h buildbotdb yelp'

alias usermem="ps auxwwwf | awk '{ foo[\$1] += \$6 } END { for (user in foo) { print foo[user] \" \" user }}' | sort -rn"

# META
alias addalias='vim ~/.bash_aliases'
