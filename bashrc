[ -f ~/.bash_aliases ] && source ~/.bash_aliases

function _git_prompt() {
    local git_status="`git status -unormal 2>&1`"
    if ! [[ "$git_status" =~ Not\ a\ git\ repo ]]; then
        if [[ "$git_status" =~ nothing\ to\ commit ]]; then
            local ansi='\e[0;32m'
        else
            local ansi='\e[0;36m'
        fi
        if [[ "$git_status" =~ On\ branch\ ([^[:space:]]+) ]]; then
            branch=${BASH_REMATCH[1]}
        else
            # Detached head - just show the current SHA
            branch="(`git rev-parse HEAD`)"
        fi
        echo -n '\[\e(0\]qqqqqq\[\e(B\](\['"$ansi"'\]'"$branch"'\[\e[31m\])'
    fi
}

export PROMPT_COMMAND='export PS1="\[\e[0;31m\e(0\]lqq\[\e(B\](\e[1;32m\u\[\e[0;35m\]@\[\e[1;36m\]\h\[\e[0;31m\])\[\e(0\]qqqqqq\[\e(B\](\[\e[1;33m\]\w\[\e[0;31m\])$(_git_prompt)\[\e(0\]qqqu\[\e(B\]\n\[\e(0\]mqq\[\e(B\](\[\e[0;32m\]\\$\[\e[0;31m\])\[\e[0;0m\] "'

# Fix gnome-terminal color support
if [ "$COLORTERM" == "gnome-terminal" ]; then
    export TERM="xterm-256color"
elif [ "$COLORTERM" == "mate-terminal" ]; then
    export TERM="xterm-256color"
elif [ "$COLORTERM" == "Terminal" ]; then
    # XFCE Terminal
    export TERM="xterm-256color"
elif [ "$COLORTERM" == "xfce4-terminal" ]; then
    export TERM="xterm-256color"
elif [ "$FBTERM" == "1" ]; then
    export TERM="fbterm"
elif [ "$TERM" == "xterm" ]; then
    # If shell reports just 'xterm', it may be PuTTY
    if [ -e ~/bin/answerback ]; then
        export ANSWERBACK=$(~/bin/answerback)
        if [ "x$ANSWERBACK" == "xPuTTY" ]; then
            export TERM="xterm-256color"
            export COLORTERM="putty-256color"
            export LANG="C"
        fi
    fi
fi

if [ "$TERMINAL_OVERRIDE" != "" ]; then
    # Some things just refuse to accept their own
    # configuration options for these things.
    export TERM=$TERMINAL_OVERRIDE
fi

# Tango palette for framebuffers
function color_palette () {
    echo -en "\e]P02e3436" #black
    echo -en "\e]P8555753" #darkgray
    echo -en "\e]P1cc0000" #darkred
    echo -en "\e]P9ef2929" #red
    echo -en "\e]P24e9a06" #darkgreen
    echo -en "\e]PA8ae234" #green
    echo -en "\e]P3c4a000" #brown
    echo -en "\e]PBfce94f" #yellow
    echo -en "\e]P43465a4" #darkblue
    echo -en "\e]PC729fcf" #blue
    echo -en "\e]P575507b" #darkmagenta
    echo -en "\e]PDad7fa8" #magenta
    echo -en "\e]P606989a" #darkcyan
    echo -en "\e]PE34e2e2" #cyan
    echo -en "\e]P7ffffff" #lightgray
    echo -en "\e]PFeeeeec" #white
}
if [ "$TERM" == "linux" ]; then
    color_palette
fi

if [ "$TERM" == "screen-bce" ]; then
    # I use screen under 256-color-supportive things
    # far more often than not, so give me 256-colors
    export TERM=screen-256color
fi

[ -f ~/.bashrc_local ] && source ~/.bashrc_local
