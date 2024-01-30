#!bin/bash

if [ "$#" -ne 1 ]; then
    echo "Correct usage: cadd <filename>"
    exit 1
fi 

FILENAME=$1

CFILE="${FILENAME}.cpp"
HFILE="${FILENAME}.h";
DATE=$(date "+%A, %B %d, %Y")

echo -e "/*** Created by Fabian Simon on ${DATE} ***/\n\n#pragma once" > ${HFILE}
echo -e "/*** Created by Fabian Simon on ${DATE} ***/\n\n#include \"${HFILE}\"" > ${CFILE}

sed -i '' "/^SOURCES/s/$/ ${CFILE}/" Makefile
