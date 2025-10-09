#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Syntaxis: $0 <palabra_a_buscar>"
  exit 1
fi

WORD=$1
URL="metaphorpsum.com/sentences/3"
FILE="content.txt"

echo "Downloading content from $URL..."
curl -sL "$URL" -o ./"$FILE" && echo "File created in $PWD/$FILE" 


RED="\e[31m"
RESET="\e[0m"
COUNT=$(grep -o "$WORD" "$FILE" | wc -l)

if [ "$COUNT" -eq 0 ]; then
   echo -e "${RED}$WORD${RESET} not found in $FILE"
else
  echo -e "The word ${RED}$WORD${RESET} was found in $COUNT times"
  FIRST_LINE=$(grep -in "$WORD" "$FILE" | head -n1)
  echo "First occurrence: $FIRST_LINE"
fi



