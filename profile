SHDIR=~/.sh
# Tell venv to use distribute over setuptools
export VIRTUALENV_DISTRIBUTE=1
# Don't compile to `.pyc` files
export PYTHONDONTWRITEBYTECODE=1
# Initializes nice pythonrc
source $SHDIR/profile
alias wimp="curl -L automation.whatismyip.com/n09230945.asp"
# Django stuff
alias dj="./manage.py"
alias djdm="./manage.py datamigration"
alias djm="./manage.py migrate"
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
alias djks="pgrep -f runserver && pkill -f runserver"
# Rails
alias rdbm="bundle exec rake db:migrate"
alias rdbs="bundle exec rake db:setup"
# Git
alias gl="git log --pretty=format:'\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --abbrev-commit"
alias la="ls -lah"
alias h="heroku"
alias g="git status"
alias gcm="git commit -m"
alias gco="git co"
alias gcob="git cob"
alias gca="git commit --amend"
alias gcan="git commit --amend --no-edit"
alias up="cd .."
alias up1="cd .."
alias up2="cd ../.."
alias up3="cd ../../.."
alias up4="cd ../../../.."
alias up5="cd ../../../../.."
alias up6="cd ../../../../../.."
alias up7="cd ../../../../../../.."
alias up8="cd ../../../../../../../.."
alias up9="cd ../../../../../../../../.."
alias restart_nginx="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.nginx.plist && launchctl load ~/Library/LaunchAgents/homebrew.mxcl.nginx.plist"
alias p="which ipython && $(which ipython) || python"
alias pw="which ipython"
alias gcd="git commit -m \"dirty\""
alias gptmr="gush && git push --tags && make release"
source $HOME/.local_profile
