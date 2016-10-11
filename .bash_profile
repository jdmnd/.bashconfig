if [ -f $HOME/.bashrc ]; then
  source $HOME/.bashrc
fi

export PATH="$HOME/bin":$PATH

export PATH="$HOME/Library/Haskell/bin":$PATH

# Add pip bin to PATH
#export PATH="/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin/:$PATH"

# Haskell Stack bin path
export PATH="/Users/dmnd/.local/bin":$PATH

# pyenv
export PYENV_ROOT=/usr/local/var/pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# pip bash completion start
_pip_completion()
{
    COMPREPLY=( $( COMP_WORDS="${COMP_WORDS[*]}" \
                   COMP_CWORD=$COMP_CWORD \
                   PIP_AUTO_COMPLETE=1 $1 ) )
}
complete -o default -F _pip_completion pip
# pip bash completion end

