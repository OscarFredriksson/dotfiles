#!/bin/zsh

function start()
{
    brew services start yabai
    brew services start skhd
}

function restart()
{
    brew services restart yabai
    brew services restart skhd
}

if [ -z "$1" ]
    then start
fi

while getopts ":r" opt; do
  case ${opt} in

    r ) 
       restart;;
   esac
done