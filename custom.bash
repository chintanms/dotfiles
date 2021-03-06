#! /usr/bin/bash

# These are commands/helpers I have gotten used to
# not everyone may find these helpful, so feel free to customize
# hence in custom.bash

# helpers
alias deltree="/bin/rm -rvf" # recursively force delete
alias dirdiff="diff --brief"
alias cls="clear"
alias quit="exit"

# other cmds I find useful
alias ty="cat"      # "type" from OpenVMS DCL
alias del=rm
alias copy=cp
# delete backup/temp left by emacs
alias purge="rm -vf *~ ; rm -vf .*~"
# show the process tree with whom
alias whom="ps uxwf"
# find my util scripts
# Never put "./" in path. It has security implications
PATH=$PATH:~/utils
PATH=$PATH:~/bin
# Ruby Gems
export GEM_HOME="~/local/gem"
