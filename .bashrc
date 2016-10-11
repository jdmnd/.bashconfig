# set custom prompt
set_prompt () {
  Last_Command=$? # Must come first!
  Blue='\[\e[01;34m\]'
  White='\[\e[01;37m\]'
  Red='\[\e[01;31m\]'
  Green='\[\e[01;32m\]'
  Yellow='\[\e[01;33m\]'
  Reset='\[\e[00m\]'
  FancyX='\342\234\227'
  Checkmark='\342\234\223'

  PS1=""
  # Add a bright white exit status for the last command
  #PS1+="$White\$? "
  # If it was successful, print a green check mark. Otherwise, print
  # a red X.
  if [[ $Last_Command == 0 ]]; then
    PS1+="$Green$Checkmark "
  else
    PS1+="$Red$FancyX"
    PS1+="($Red\$?) "
  fi
  # If root, just print the host in red. Otherwise, print the current user
  # and host in green.
  #if [[ $EUID == 0 ]]; then
    #PS1+="$Red\\h "
  #else
    #PS1+="$Green\\u@\\h "
  #fi
  PS1+="$Reset\\u "
  # Print the working directory in blue
  PS1+="$Blue\\W "
  # Print the git branch in yellow
  PS1+="$Yellow$(__git_ps1 '(%s)')"
  # Print the prompt marker in blue, and reset the text color to the default.
  PS1+="$Blue\\\$$Reset "
}
PROMPT_COMMAND='set_prompt'

. /usr/local/etc/bash_completion.d/git-prompt.sh
. /usr/local/etc/bash_completion.d/git-completion.bash
. /usr/local/etc/bash_completion.d/aws_bash_completer
. /usr/local/etc/bash_completion.d/eb_completion.bash
export GIT_PS1_SHOWDIRTYSTATE=1

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export EDITOR='mvim -f'

alias sudo='sudo '
alias aes256='gpg -c --cipher-algo AES256 '
alias sshuni='ssh -c blowfish mchi2jd2@kilburn.cs.man.ac.uk'
alias sshxuni='ssh -X -c blowfish mchi2jd2@kilburn.cs.man.ac.uk'
alias c=clear
alias g=git
alias ldd='otool -L'
alias skim='open -a ~/Applications/Skim.app'

mkcd () { mkdir $1; cd $1; }

bashman () { man bash | less -p "^       $1 "; }

function scptouni () { scp -rc blowfish $1 mchi2jd2@kilburn.cs.man.ac.uk:$2; }
function scpfromuni () { scp -rc blowfish mchi2jd2@kilburn.cs.man.ac.uk:$1 $2; }
function unimount () {
  cd;
  umount unifs \
    || umount -f unifs;
  sshfs mchi2jd2@kilburn.cs.man.ac.uk:/home/mchi2jd2 unifs/ \
    && echo 'success';
}

# -- BASH HISTORY --
# Avoid duplicates
export HISTCONTROL=ignoredups:erasedups
# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend
# After each command, append to the history file and reread it
#export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"


. $(brew --prefix)/etc/profile.d/z.sh

# added by travis gem
[ -f /Users/dmnd/.travis/travis.sh ] && source /Users/dmnd/.travis/travis.sh
