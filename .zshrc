export GREP_OPTIONS='--color=auto'
export CLICOLOR=1
export NODE_ENV=development
export EDITOR=vim
REL_NODE_PATH=./node_modules/.bin

export PATH=$PATH:$REL_NODE_PATH
echo "$USER"

for f in \
    "/Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh" \
    "/Users/$USER/code/psql-service-completion/psql-service-completion.bash" ; do
    if [ -f $f ]; then
        echo "source $f"
        source $f
    fi
done

setopt PROMPT_SUBST ; PS1='%~$(__git_ps1 "(%s)")$ '



# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/nathan/bin/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/nathan/bin/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/nathan/bin/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/nathan/bin/google-cloud-sdk/completion.zsh.inc'; fi
