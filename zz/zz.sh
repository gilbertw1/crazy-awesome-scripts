#!/bin/bash

zz() {
  DIR=$(sk-tmux --ansi -i -q "$1" -c 'zlite {} | tac | awk '"'"'{print $2}'"'"'' --preview "ls --color=always -l {0}")

  if [ $? -eq 0 ] || [ ! -z "$DIR" ]; then
    cd $DIR
  fi

}