if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi


export PATH="$HOME/.cargo/bin:$PATH"

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export ANDROID_SDK=/Users/nathanj/Library/Android/sdk
export PATH=/Users/nathanj/Library/Android/sdk/platform-tools:$PATH
