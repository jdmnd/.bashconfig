if [ -f $HOME/.bashrc ]; then
  source $HOME/.bashrc
fi


export PATH="$HOME/bin":$PATH

export PATH="$HOME/.cabal/bin":$PATH
export PATH="$HOME/Library/Haskell/bin":$PATH

# Add pip bin to PATH
#export PATH="/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin/:$PATH"
