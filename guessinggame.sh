#!/bin/bash

function guess_file_count {
  local file_count=$(ls -1 | wc -l)
  local guess=-1

  while [[ $guess -ne $file_count ]]; do
    echo "Combien de fichiers y a-t-il dans le répertoire actuel ?"
    read guess
    if [[ $guess -lt $file_count ]]; then
      echo "Votre estimation est trop basse."
    elif [[ $guess -gt $file_count ]]; then
      echo "Votre estimation est trop haute."
    else
      echo "Félicitations ! Vous avez deviné le bon nombre de fichiers."
    fi
  done
}

guess_file_count
