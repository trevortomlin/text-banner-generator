#!/bin/bash

bg="░"
tlline="┌"
hline="─"
vline="│"
trline="┐"
blline="└"
brline="┘"

declare -A charArray

charArray[a]="█▀██▀█▀░▀"
charArray[b]="█▀▄█▀▄▀▀░"
charArray[c]="█▀▀█░░▀▀▀"
charArray[d]="█▀▄█░█▀▀░"
charArray[e]="█▀▀█▀▀▀▀▀"
charArray[f]="█▀▀█▀▀▀░░"
charArray[g]="█▀▀█░█▀▀▀"
charArray[h]="█░██▀█▀░▀"
charArray[i]="▀█▀░█░▀▀▀"
charArray[j]="▀▀█▄░█▀▀▀"
charArray[k]="█░███░█░█"
charArray[l]="█░░█░░▀▀▀"
charArray[m]="█▄██░█▀░▀"
charArray[n]="█▀██░█▀░▀"
charArray[o]="█▀██░█▀▀▀"
charArray[p]="█▀██▀▀▀░░"
charArray[q]="█▀██▄█░░▀"
charArray[r]="█▀▄█▀▄▀░▀"
charArray[s]="█▀▀▀▀█▀▀▀"
charArray[t]="▀█▀░█░░▀░"
charArray[u]="█░██░█▀▀▀"
charArray[v]="█░█▀▄▀░▀░"
charArray[w]="█░██▄█▀░▀"
charArray[x]="█░█░█░█░█"
charArray[y]="█░█░█░░▀░"
charArray[z]="▀▀█░▄▀▀▀▀"

charArray[:]="░░░░▀░░▀░"
charArray[!]="░█░░▀░░▀░"
charArray[?]="▀▀█░▀░░▀░"

read text

print_chars(){

  for row in {0..2..1}
  do

    for ((col=0;col<${#1};col+=1)); do

    char=${1:col:1}
    if [ $col -eq 0 ];

    then
      echo -n $vline

    fi
    echo -n ░
    echo -n ${charArray[$char]:row*3:3}
    echo -n ░

    if [ $col -eq $((${#1}-1)) ];

    then
      echo -n $vline

    fi

  done

  echo

  done

  echo -n $vline

  for ((it=0;it<${#1}*5;it+=1)); do

    echo -n $bg

  done

  echo  $vline

}

print_top(){

  echo -n $tlline
  for i in $(seq 0 $1);
  do
    echo -n $hline
  done
  
  echo $trline

}

print_bottom(){

  echo -n $blline
  for i in $(seq 0 $1);
  do
    echo -n $hline
  done
  
  echo $brline

}

print_top $((${#text}*5-1))

print_chars $text

print_bottom $((${#text}*5-1))
