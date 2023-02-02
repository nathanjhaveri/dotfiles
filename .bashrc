export GREP_OPTIONS='--color=auto'
export CLICOLOR=1
export NODE_ENV=development
export NODE_OPTIONS=--max_old_space_size=4096
export GOPATH=$HOME/code/go
export KAFKA_PATH=/Applications/kafka_2.13-2.7.0/bin
export RUSTBIN=$HOME/.cargo/bin
export CHEFPATH=/opt/chefdk/bin
export PGBIN=/Applications/Postgres.app/Contents/Versions/latest/bin
export EDITOR=nvim
export DOCKER_HOST=unix://$HOME/.colima/docker.sock
REL_NODE_PATH=./node_modules/.bin

export PATH=$GIT_PATH:$PATH:$GOPATH::$KAFKA_PATH:$RUSTBIN:$REL_NODE_PATH:$PGBIN:$CHEFPATH
echo "$USER"


export JAVA_HOME=$(/usr/libexec/java_home -v 1.8.0_202)

for f in \
    "/usr/local/etc/bash_completion.d/git-prompt.sh"  \
    "/usr/local/etc/bash_completion.d/git-completion.bash" \
    "/Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh" \
    "/Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.zsh" \
    "/Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh" \
    "/Library/Developer/CommandLineTools/usr/share/git-core/git-completion.bash" \
    "/Users/$USER/code/psql-service-completion/psql-service-completion.bash" \
    "/Users/$USER/code/google-cloud-sdk/path.bash.inc" \
    "/Users/$USER/code/google-cloud-sdk/completion.bash.inc"; do
    if [ -f $f ]; then
        echo "sourcing $f"
        source $f
    fi
done

# For frontend build
ulimit -S -n 4096

GIT_PS1_SHOWCOLORHINTS=true
PS1='\w$(__git_ps1 "(%s)")\$ '

# Unlimited history
export HISTFILESIZE=
export HISTSIZE=

felog () { sudo bunyan -p '*' --color -l trace; }
runporchpg () { docker run --rm -ti --name porchpg -p 5432:5432 gcr.io/porch-gcp/porchpg:latest; }
porchpg () { PGPASSWORD=porch123 psql -h localhost -p 5432 -U postgres; }
runboolegdw () { docker run --rm -ti --name bootlegdw -p 5430:5432 gcr.io/porch-gcp/bootleg-dw:latest; }
bootlegdw () { PGPASSWORD=bootleg_dw psql -U bootleg_dw -d bootleg_dw -h localhost -p 5430; }

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

alias auth-fetcher='docker run -p4444:4444 --rm gcr.io/porch-gcp/auth-fetcher:latest -env=prod -url=false'

