#!/bin/bash
SCRIPTPATH="${BASH_ARGV[0]}"

if [[ -L $SCRIPTPATH ]]; then
  cd $(dirname $(readlink $SCRIPTPATH))
fi
for file in bash_profile_scripts/*
do
  if [[ -f $file ]]; then
    source $file
  fi
done

for file in bash_profile_scripts/secrets/*
do
  if [[ -f $file ]]; then
    source $file
  fi
done
