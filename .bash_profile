export PATH="vendor/bin:/usr/local/mysql/bin:$PATH"
alias composer="php /usr/local/bin/composer"
alias devroot="cd <devroot>"
alias maxroot="cd <maxmsp-root>"

if [ -d "<path-to-sdk>/platform-tools" ] ; then
  export PATH="<path-to-sdk>/platform-tools:$PATH"
fi


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Aliases for dev and stuff
alias remaster="git rebase master"
alias rebash=". ~/.bash_profile"
alias gadda="git add --all"
alias gits="git status"
alias gc="git commit -m"
alias geck="git checkout"
alias branches="git branch -v"
alias prlog1="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias prlog2="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true

# function to allow us to use pip globally if we need to
gpip(){
   PIP_REQUIRE_VIRTUALENV="" pip "$@"
}

alias pythonenv="source ~/virtualenvs/pythonenv/bin/activate"
alias ipythonenv='source ~/virtualenvs/ipython_env/bin/activate'
alias flaskenv='source ~/virtualenvs/flask_env/bin/activate'
alias djangoenv='source ~/virtualenvs/django_ezekiel/bin/activate'
alias pyman='python manage.py'
export PATH="$PATH:$HOME/.composer/vendor/bin"
alias punit="phpunit --testdox"

# meteor js package dir
export PACKAGE_DIRS="~/Sites/HB/schema:${PACKAGE_DIRS}"
alias killnode="killall -KILL node"

# GOLANG
export GOPATH="$HOME/Sites/GO"

# vim
alias mvim="/Applications/MacVim.app/contents/MacOS/MacVim"
