#! /usr/bin/env bash

# setting the bash command prompt
# date-time <new-line> user-name@host current-shell [current working directory] $
PS1="\d \t\n\u@\h \s [\w] $ "
# set emacs as default editor
export EDITOR="/usr/bin/emacs"
# export EDITOR="/usr/bin/vim"

# Managing Bash history 
# ignore/erase duplicates
export HISTCONTROL="ignoredups"
export HISTCONTROL=erasedups
# Ignore some controlling instructions
# HISTIGNORE is a colon-delimited list of patterns which should be excluded.
# The '&' is a special pattern which suppresses duplicate entries.
export HISTIGNORE=$'[ \t]*:&:[fb]g:exit'
# export HISTIGNORE=$'[ \t]*:&:[fb]g:exit:ls' # Ignore the ls command as well
# resize history
export HISTSIZE=10000

# colored grep
export GREP_OPTIONS='--color=auto'

