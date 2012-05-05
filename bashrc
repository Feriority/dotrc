[ -f ~/.bash_aliases ] && source ~/.bash_aliases

export PS1="\[\e[0;31m\e(0\]lqq\[\e(B\](\e[1;32m\]\u\[\e[0;35m\]@\[\e[1;36m\]\h\[\e[0;31m\])\[\e(0\]qqqqqq\[\e(B\](\[\e[1;33m\]\w\[\e[0;31m\])\[\e(0\]qqqu\[\e(B\]\n\[\e(0\]mqq\[\e(B\](\[\e[0;32m\]\\$\[\e[0;31m\])\[\e[0;0m\] "

[ -f ~/.bashrc_local ] && source ~/.bashrc_local
