PS1="[\$(date +%H:%M)] \[\033[0;32m\]\h\[\033[00m\] : \[\033[01;33m\]\w\[\033[00m\] "
# Display the current git branch                                                                                                                                                                           
PS1=$PS1"\[\033[01;31m\]\$(git branch 2>/dev/null | grep -e '\* ' | sed 's/^..\(.*\)/{ \1 }/')\[\033[00m\] $\n"
PS2='-> '

export PS1
export PS2




