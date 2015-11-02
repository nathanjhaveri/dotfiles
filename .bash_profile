if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

#vim keybindings
#set -o vi

alias vim='mvim -v'

GIT_PATH=/usr/local/bin/git
GIT_PS1_SHOWCOLORHINTS=true
PSQL_PATH=/Applications/Postgres.app/Contents/Versions/9.4/bin

export GREP_OPTIONS='--color=auto'
export NODE_ENV=development
export GOPATH=$HOME/code/go
export KAFKA_PATH=/Applications/kafka_2.10-0.8.2.1/bin

export PATH=$GIT_PATH:$PATH:$GOPATH:$PSQL_PATH:$KAFKA_PATH
source ~/git-completion.bash
source ~/git-prompt.sh

# For frontend build
ulimit -S -n 4096

# The next line updates PATH for the Google Cloud SDK.
source '/Users/nathanj/code/google-cloud-sdk/path.bash.inc'

# The next line enables bash completion for gcloud.
source '/Users/nathanj/code/google-cloud-sdk/completion.bash.inc'

export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

eval "$(docker-machine env default)"
