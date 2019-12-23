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

function stop()
{
    brew services stop yabai
    brew services stop skhd
}

if [ -z "$1" ]
    then start
fi

while getopts ":rs" opt; do
  case ${opt} in

    r ) 
        restart;;
    s )
        stop;;
   esac
done