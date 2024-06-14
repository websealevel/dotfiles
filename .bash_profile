#Prompt : heure : current working dir
PS1="[\$(date \"+%H:%M %d/%m\")] \[\033[0;32m\]\u\[\033[00m\] : \[\033[01;33m\]\w\[\033[00m\] "
# Display the current git branch 
PS1=$PS1"\[\033[01;31m\]\$(git branch 2>/dev/null | grep -e '\* ' | sed 's/^..\(.*\)/{ \1 }/')\[\033[00m\] $\n"

export PS1

HISTTIMEFORMAT="%Y-%m-%d %T "
