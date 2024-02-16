#!/bin/bash

if [ $# -ne 1 ]; then
    echo 'Usage: gacp <commit message>'
    exit 0
fi

git add . 
git commit -m "$1"
git push


