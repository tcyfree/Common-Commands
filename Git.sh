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


git强制覆盖：
    git fetch --all
    git reset --hard origin/master
    git pull
 

git强制覆盖本地命令（单条执行）：
    git fetch --all && git reset --hard origin/master && git pull
 
第一个是：拉取所有更新，不同步；
第二个是：本地代码同步线上最新版本(会覆盖本地所有与远程仓库上同名的文件)；
第三个是：再更新一次（其实也可以不用，第二步命令做过了其实）
