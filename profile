SHDIR=~/.sh
# Initializes nice pythonrc
PYTHONSTARTUP=$HOME/.pythonrc.py
export PYTHONSTARTUP
source $SHDIR/profile
alias wimp="curl -L automation.whatismyip.com/n09230945.asp"
alias la="ls -la"
alias dj="./manage.py"
alias djdm="./manage.py datamigration"
alias djm="./manage.py syncdb --migrate"
alias djrs="./manage.py runserver"
alias djrsp="./manage.py runserver_plus"
alias djs="./manage.py shell"
alias djsp="./manage.py shell_plus"
alias djdbs="./manage.py dbshell"
alias djsm="./manage.py schemamigration"
alias djsdb="./manage.py syncdb"
alias djsa="./manage.py startapp"
alias djbdb="./manage.py backupdb"
alias djrdb="./manage.py restoredb"
alias gl="git log --pretty=format:'\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --abbrev-commit"
alias la="ls -la"
alias h="heroku"
alias g="git status"
source $HOME/.local_profile
