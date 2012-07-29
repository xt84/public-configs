# commands
alias mvn-start-debug='mvn -Dmaven.surefire.debug="-Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=y,address=8000 -Xnoagent -Djava.compiler=NONE" test'

# main
alias tmux="$HOME/.tmux.sh"

# filesystems
alias l='ls -lah'
alias goto-projects="cd $HOME/Projects"
