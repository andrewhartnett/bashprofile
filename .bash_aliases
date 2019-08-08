# Helpers
alias gln="grep -rni $1" # grep search showing line number
alias ll="ls -la"

# Shortcuts
alias phpstorm="pstorm"
alias phpunit="vendor/bin/phpunit"
alias sites="cd ~/Sites"
alias val="cd ~/Sites/valet"
alias personal="cd ~/Sites/personal"
alias bp="vim ~/.bash_profile"
alias ba="vim ~/.bash_aliases"

# GIT
alias gco="git checkout"
alias gs="git status"
alias gap="git add -p"
alias gt=gitAddTag
alias glt=gitLatestTag

function gitAddTag()
{
    git add . && git reset --hard HEAD
    git checkout master
    git pull origin master
    git tag $1
    git push origin $1
}

function gitLatestTag()
{
    git describe --tags
}

# Fun
alias weather="curl wttr.in"
