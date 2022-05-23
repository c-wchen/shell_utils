#!/bin/bash


# for loop
for ((i = 0; i < 4; i++)); do
    echo "for (()): $i"
done

for i in {0..3}; do
    echo "for in  : $i"
done

for i in `seq 0 3`; do
    echo "for seq : $i"
done

for i in `seq -f '%08g' 0 10`; do
    echo "for seq format: $i"
done



# while loop

i=0
while ((i < 10)); do
    echo "while $i"
    ((i++))
    # i=$(expr $i + 1)

done