SCRIPT_PATH="${BASH_SOURCE[0]}"
DIR=$(cd -P "$(dirname $SCRIPT_PATH)" && pwd )
echo $DIR

BASH_DOT=$DIR/bash/*
TMUX_DOT=$DIR/tmux/*
VIM_DOT=$DIR/vim/*

for file in $BASH_DOT
do
    ln -s $file ~/.$(basename $file)

done

for file in $TMUX_DOT
do
    ln -s $file ~/.$(basename $file)
done

for file in $VIM_DOT
do
    ln -s $file ~/.$(basename $file)
done
