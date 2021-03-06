#! /usr/bin/bash

# nifty ways to changing directory
alias cd..="cd .."      # allow absence of space
alias ..="cd .."        # go up a directory
alias ...="cd ../.."    # go up 2 directories
alias -- -="cd -"       # use '-' to go back
                        # '--' (double dash) to indicate end of arguments
                        # see http://tldp.org/LDP/abs/html/special-chars.html

# variations to directory listing
alias ls="ls -F --color=auto"
alias ll="ls -l"
alias l="ls -al"
alias lc="clear ; l"

# If these are enabled they will be used instead of any instructions
# they may mask.  For example, alias rm='rm -i' will mask the rm
# application.  To override the alias instruction use a \ before, ie
# \rm will call the real rm not the alias.

# verbose about stuff I'm doing
alias rm="rm -iv" # prompt before deletion
alias mv="mv -v"
alias cp="cp -v"

# colorize
alias grep="grep --color=auto"

alias mkdir="mkdir -p" # makes intermediate directories if needed

# Default to human readable figures
# alias df='df -h'
alias du='du -h'
alias dir="ls -ahl"

alias less='less -r'    # raw control characters
