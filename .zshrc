export GREP_OPTIONS='--color=auto'
export CLICOLOR=1
export NODE_ENV=development
export EDITOR=vim
REL_NODE_PATH=./node_modules/.bin

export PATH=$PATH:$REL_NODE_PATH:~/bin:~/bin/sbt/bin
echo "$USER"

for f in \
    "/Users/$USER/.secrets" \
    "/Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh" \
    "/Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.zsh" \
    "/Users/$USER/code/psql-service-completion/psql-service-completion.bash"; do
    if [ -f $f ]; then
        echo "source $f"
        source $f
    fi
done

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


autoload -Uz compinit && compinit
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
#RPROMPT='${vcs_info_msg_0_}'
PROMPT='%~(${vcs_info_msg_0_})$ '
zstyle ':vcs_info:git:*' formats '%b'



# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/nathanj/bin/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/nathanj/bin/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/nathanj/bin/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/nathanj/bin/google-cloud-sdk/completion.zsh.inc'; fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
