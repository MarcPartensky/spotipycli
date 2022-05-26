#!/bin/sh
COUNTER=0
folder=clitify
for script in $(/bin/ls $folder); do
    if [[ -x $folder/$script ]]; then
        let COUNTER++
        cmd=$(echo $script | cut -d'.' -f1)
        ln -sf $PWD/$folder/$script ~/.local/bin/$cmd
        echo -e "- \e[1m$script\e[0m as \e[1m$cmd\e[0m"
    fi
done
echo -e "\e[3mLoaded $COUNTER commands\e[0m"
