if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

# The next line updates PATH for the Google Cloud SDK.
source '/Users/nathan/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
source '/Users/nathan/google-cloud-sdk/completion.bash.inc'

GIT_PS1_SHOWCOLORHINTS=true

export GREP_OPTIONS='--color=auto'
export CLICOLOR=1


