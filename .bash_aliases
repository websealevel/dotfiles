alias ll="ls -lG"
alias c="docker-compose "
alias dexec="docker exec -it "
alias gitp="git push "
alias gitc="git commit -m"
alias gits="git status"
alias gita="git add ."
alias gitup="git add .;git commit -m \"mise a jour\"; git push;"

function gitupm {
	echo $1;
	git add .;
	git commit -m "$1";
	git push;
}
