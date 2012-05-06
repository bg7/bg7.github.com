#!/bin/bash
#
# bg7 website deploy script
#
sitepath=$HOME/bg7.github.com/

cd $sitepath
git checkout source
git pull origin source
bash -l -c 'rake generate'
bash -l -c 'rake deploy'
