# commands
alias mvn-start-debug='mvn -Dmaven.surefire.debug="-Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=y,address=8000 -Xnoagent -Djava.compiler=NONE" test'

# main
alias tmux="$HOME/.tmux.sh"

# -------------------------
# location hyperspace jumps
# -------------------------
# Projects category
alias goto-projects='cd $HOME/$PROJECTS'
alias goto-projects-java='cd $HOME/$PROJECTS/java'
alias goto-projects-php='cd $HOME/$PROJECTS/php'
alias goto-projects-configs='cd $HOME/$PROJECTS/configs'
alias goto-projects-blog='cd $HOME/$PROJECTS/blog'
