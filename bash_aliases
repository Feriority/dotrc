# ENV
export EDITOR=vim
export VISUAL=vim
export PAGER=less
export LESS="-R"

if [[ Linux == $(uname) ]] ; then
	alias ls='ls --color'
else
	alias ls='ls -G'
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
alias yank="git pull origin master"
alias shove="git push origin HEAD"

alias usermem="ps auxwwwf | awk '{ foo[\$1] += \$6 } END { for (user in foo) { print foo[user] \" \" user }}' | sort -rn"

# META
alias addalias='vim ~/.bash_aliases'

alias clipboard='xsel --input --clipboard'
[ -f ~/.bash_aliases_local ] && source ~/.bash_aliases_local
