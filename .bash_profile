if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

# MacPorts Installer addition on 2013-12-17_at_01:04:43: adding an appropriate
# PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
export PATH="~/bin":$PATH
export PATH="$HOME/Library/Haskell/bin:$PATH"

# MacPorts Installer addition on 2014-10-28_at_13:51:16: adding an appropriate
# PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=/Users/dmnd/Dropbox/Programming/C++/pong/cocos2d-x/tools/cocos2d-console/bin
export PATH=$COCOS_CONSOLE_ROOT:$PATH

# Add environment variable COCOS_TEMPLATES_ROOT for cocos2d-x
export COCOS_TEMPLATES_ROOT=/Users/dmnd/Dropbox/Programming/C++/pong/cocos2d-x/templates
export PATH=$COCOS_TEMPLATES_ROOT:$PATH

# Add pip bin to PATH
export PATH="/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin/:$PATH"
