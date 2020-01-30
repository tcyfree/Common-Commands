vi ~/.bashrc


alias gs="git status"
alias gpud="git push origin develop"
alias gpum="git push origin master"
alias gcom="git checkout master"
alias gcod="git checkout develop"
alias gcop="git checkout prepare"
alias gm="git merge"
alias gb="git branch"
alias gc="git commit -m"
alias gaa="git add ."
alias gam="git commit -am"
alias gp="git push"
alias gpl="git pull"
alias gpld="git pull origin develop"
alias gplm="git pull origin master"
alias nano="subl"
#alias cat=ccat
alias tinker="php artisan tinker"
alias glf="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gl="git log"
alias gt="git tag"
alias c:c="php artisan cache:clear"
alias conf:c="php artisan config:clear"
alias r:c="php artisan route:clear"
alias defpm="docker exec -it lnmp-php-fpm sh"

source .bashrc
