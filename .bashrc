#alias git='/usr/local/bin/git'
alias vim='mvim -v'

export M2_HOME=/usr/local/Cellar/maven/3.2.1/libexec
export M2=$M2_HOME/bin
export MAVEN_OPTS="-Xms256m -Xmx512m"
export JAVA_HOME=`/usr/libexec/java_home`
export SBINPATH=/usr/local/sbin

export ANDROID_HOME="/usr/local/android-sdk-macosx"
export ANDROID_PATH=$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

export PATH=$M2:$SBINPATH:$ANDROID_PATH:$PATH
export NODE_ENV=development

