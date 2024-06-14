alias ll="ls -lG"
alias c="docker-compose " 
alias dc="docker compose"
alias dexec="docker exec -it "
alias handbrake="flatpak run fr.handbrake.ghb"
alias excalidraw="php -S localhost:9007 -t ~/excalidraw"
alias ens="cd /home/paul/depots/paul-schuhm/enseignement";

# git and github
alias gitp="git push "
alias gitc="git commit -m"
alias gits="git status"
alias gita="git add ."
alias gitup="git add .;git commit -m \"mise a jour\"; git push;"
alias ".."="cd ..";
alias stop-dengine="systemctl stop docker docker.socket containerd"
alias start-dengine="systemctl start docker docker.socket containerd"
alias emacs="emacs -nw"
alias em="emacs -nw"

#Stage, commit with a custom message and push to remote
function gitupm {
	echo $1;
	git add .;
	git commit -m "$1";
	git push;
}

# Alias pour permettre sudo [un_alias]
alias sudo='sudo '

# Aliases pour Xampp
alias lampp='/opt/lampp/lampp'
alias ctlampp='/opt/lampp/manager-linux-x64.run'

#Convertit un fichier markdown en fichier PDF (en passant par du HTML/CSS)
function md2pdf(){
	#pandoc $1.md -t html5 -o $1.pdf --toc --toc-depth=2 --pdf-engine=wkhtmltopdf 
	filename="${1%%.*}"
	#si pas de fichier style.css local en creer un
	if [ -e "style.css" ]; then
		echo "Stylesheet found"
	else
		echo "Empty stylesheet created"
		touch style.css
	fi
	pandoc $1 -f markdown+tex_math_double_backslash -t html5 -o ${filename}.pdf --mathml --css style.css
	echo "Saved to $filename.pdf";
}

function md2html(){
	#pandoc $1.md -t html5 -o $1.pdf --toc --toc-depth=2 --pdf-engine=wkhtmltopdf 
	filename="${1%%.*}"
	#si pas de fichier style.css local en creer un
	if [ -e "style.css" ]; then
		echo "Stylesheet found"
	else
		echo "Empty stylesheet created"
		touch style.css
	fi
	pandoc $1 -f markdown+tex_math_double_backslash -t html5 -s -o ${filename}.html --mathml --css style.css
	echo "Saved to $filename.html";
}

function md2htmlandpdf(){
	md2html $1
	md2pdf $1
}

function cleanmd(){

	filename="${1%%.*}"
	pandoc $1 --strip-comments -o ${filename}-clean.md
	echo "md source without comments saved to ${filename}-clean.md";
}
alias marp2pdf="marp --html --pdf --allow-local-files"
alias marpw="marp --html -w --allow-local-files"
alias marp2html="marp --html --allow-local-files"
alias marp2pdfwithcomments="marp --html --pdf --pdf-notes --allow-local-files"

alias factorio="./Documents/games/factorio/bin/x64/factorio"
alias wp="docker-compose run --rm wpcli"

#bluetooth
alias bluetooth="sudo systemctl start bluetooth"
alias umlet="java -jar ~/Téléchargements/Umlet/umlet.jar"
alias analyse-si="java -jar ~/bin/analyseSI-0.74.1.jar"

#switch entre versions php installées
alias switch-php="sudo update-alternatives --config php"
#editeur de factures web
alias ined="php -S localhost:5566 -t /home/paul/depots/paul-schuhm/editeur-de-factures-web/src/public --php-ini=/home/paul/depots/paul-schuhm/editeur-de-factures-web/php-prod.ini"
alias tv="xawtv"

#Correction
alias check="aspell check"
