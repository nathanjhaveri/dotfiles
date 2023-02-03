export GREP_OPTIONS='--color=auto'
export CLICOLOR=1
export NODE_ENV=development
export EDITOR=vim
REL_NODE_PATH=./node_modules/.bin

export PATH=$PATH:$REL_NODE_PATH
echo "$USER"

for f in \
    "/Users/$USER/.secrets" \
    "/Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh" \
    "/Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.zsh" \
    "/Users/$USER/code/psql-service-completion/psql-service-completion.bash" \
    "/Users/$USER/code/google-cloud-sdk/path.bash.inc" \
    "/Users/$USER/code/google-cloud-sdk/completion.bash.inc"; do
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


