#!/usr/bin/env bash

printf "Light or Dark variant [dark]: "
read var
primary="#2196F3"
while true; do
  printf "Enter primary color [blue]: "
  read input
  input=${input,,}
  if [[ $input == "list" ]]; then
    printf "Valid Inputs:\n - Red\n - Pink\n - Purple\n - Deep Purple\n"
    printf " - Indigo\n - Blue\n - Pale Blue\n - Cyan\n - Teal\n - Green\n"
    printf " - Pale Green\n - Lime\n - Yellow\n - Amber\n - Orange\n"
    printf " - Deep Orange\n - Brown\n"
  elif [[ "$input" == "red" ]]; then
    primay="#F44336"
    break
  elif [[ "$input" == "pink" ]]; then
    primary="#E91E63"
    break
  elif [[ "$input" == "purple" ]]; then
    primary="#9C27B0"
    break
  elif [[ "$input" == "deep purple" ]]; then
    primary="#673AB7"
    break
  elif [[ "$input" == "indigo" ]]; then
    primary="#3F51B5"
    break
  elif [[ "$input" == "blue" ]]; then
    primary="#2196F3"
    break
  elif [[ "$input" == "pale blue" ]]; then
    primary="#03A9F4"
    break
  elif [[ "$input" == "cyan" ]]; then
    primary="#00BCD4"
    break
  elif [[ "$input" == "teal" ]]; then
    primary="#57C7B8"
    break
  elif [[ "$input" == "green" ]]; then
    primary="#4CAF50"
    break
  elif [[ "$input" == "pale green" ]]; then
    primary="#8BC34A"
    break
  elif [[ "$input" == "lime" ]]; then
    primary="#CDDC39"
    break
  elif [[ "$input" == "yellow" ]]; then
    primary="#FFEB3B"
    break
  elif [[ "$input" == "amber" ]]; then
    primary="#FFC107"
    break
  elif [[ "$input" == "orange" ]]; then
    primary="#FF9800"
    break
  elif [[ "$input" == "deep orange" ]]; then
    primary="#FF5722"
    break
  elif [[ "$input" == "brown" ]]; then
    primary="#795548"
    break
  fi
done

if [[ $var == "" ]]; then
  var="dark"
fi

if [[ -e "$HOME/.Xresources" ]]; then
  if [[ $var == "dark" ]]; then
    sed "s/{{primary}}/$primary/g" ./Xresources_dark >> ~/.Xresources
  else
    sed "s/{{primary}}/$primary/g" ./Xresources_light >> ~/.Xresources
  fi
else
  if [[ $var == "dark" ]]; then
    sed "s/{{primay}}/$primary/g" ./Xresources_dark >> ~/.Xresources
  else
    sed "s/{{primay}}/$primary/g" ./Xresources_light >> ~/.Xresources
  fi
fi
