#!/bin/bash

#1 start
count=0
while [ $count -le 20 ]; do
	echo $count
	count=$((count + 2))
done
#1 end

#2 start
count=0
until [ $count -gt 20 ]; do
	echo $count
	count=$((count + 2))
done
#2 end

#3 start
index=0
while true; do
	square=$((index * index))
	if [ $square -gt 1000 ]; then
		break
	fi
	echo "Square of $index is $square"
	index=$((index + 1))
done
#3 end

#4 start
for ((count = 0; count <= 20; count += 2)); do
	echo $count
done
#4 end

#5 start
while true; do
    echo "Enter an integer number, or enter q to quit:"
    read input
    if [ "$input" == "q" ]; then
        break
    fi
    
    if [[ ! $input =~ ^[0-9]+$ ]]; then
        echo "Invalid input. Please enter an integer."
        continue
    fi
    double=$((input * 2))
    echo "Double: $double"
done
#5 end

#6 start
index=1
while [ $index -le 5 ]; do
	touch ./file_$index.txt
	index=$((index + 1))
done
#6 end

#7 start
for ((i = 3; i <= 30; i+=3)); do
	echo $i
done
#7 end

#8 start
for file in *; do
	echo "$file"
done
#8 end

#9 start
for file in "$@"; do
    if [[ -r $file ]]; then
        shortest=""
        length=9999
        while read -r word; do
            if (( ${#word} < length && ${#word}!=0)); then
                shortest=$word
                length=${#word}
            fi
        done < "$file"
        echo "File: $file | Shortest word: '$shortest' | Length: $length"
    else
        echo "$file: File not readable"
    fi
done
#9 end

#10 start
for file in "$@"; do
	if [ -e "$file" ]; then
		echo "$file exists."
		if [ -r "$file" ]; then
			echo "$file is readable."
		else
			echo "$file is not readable."
		fi
	else
		echo "$file does not exist."
	fi
done
#10 end
