#!/bin/bash

bg="░"
tlline="┌"
hline="─"
vline="│"
trline="┐"
blline="└"
brline="┘"

a=("█▀█" "█▀█" "▀░▀")
b=("█▀▄" "█▀▄" "▀▀░")
c=("█▀▀" "█░░" "▀▀▀")
d=("█▀▄" "█░█" "▀▀░")
e=("█▀▀" "█▀▀" "▀▀▀")
f=("█▀▀" "█▀▀" "▀░░")
g=("█▀▀" "█░█" "▀▀▀")
h=("█░█" "█▀█" "▀░▀")
i=("▀█▀" "░█░" "▀▀▀")
j=("▀▀█" "▄░█" "▀▀▀")
k=("█░█" "██░" "█░█")
l=("█░░" "█░░" "▀▀▀")
m=("█▄█" "█░█" "▀░▀")
n=("█▀█" "█░█" "▀░▀")
o=("█▀█" "█░█" "▀▀▀")
p=("█▀█" "█▀▀" "▀░░")
q=("█▀█" "█▄█" "░░▀")
r=("█▀▄" "█▀▄" "▀░▀")
s=("█▀▀" "▀▀█" "▀▀▀") 
t=("▀█▀" "░█░" "░█░")
u=("█░█" "█░█" "▀▀▀")
v=("█░█" "▀▄▀" "░▀░")
w=("█░█" "█▄█" "▀░▀")
x=("█░█" "░█░" "█░█")
y=("█░█" "░█░" "░▀░")
z=("▀▀█" "▄▀" "▀▀▀")

echo -n $tlline
for i in {0..11..1}
do
  echo -n $hline
done

echo $trline

for i in {0..2..1}
do
  echo -n $vline
  echo -n $bg
  echo -n ${a[i]}
  echo -n $bg
  echo -n ${b[i]}
  echo -n $bg
  echo -n ${c[i]}
  echo $vline
done

echo -n $blline
for i in {0..11..1}
do
  echo -n $hline
done

echo $brline

for item in "${a[@]}";
do
	echo $item
done

for item in "${b[@]}";
do
	echo $item
done
