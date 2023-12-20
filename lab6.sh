#!/bin/bash

#1 start
read -r -p "Enter a number: " number

if [[ $number -gt 0 ]]; then
	echo "The number is positive."
elif [[ $number -lt 0 ]]; then
	echo "The number is negative."
else
	echo "The number is zero."
fi
#1 end

#2 start
read -r -p "Enter a number: " number

if ((number > 0)); then
	echo "The number is positive."
elif ((number < 0)); then
	echo "The number is negative."
else
	echo "The number is zero."
fi
#2 end

#3 start
read -r -p "Enter a number: " number

if ((number % 2 == 0 && number % 3 == 0 && number % 5 == 0)); then
	echo "The number is divisible by 2, 3, and 5."
else
	echo "The number is not divisible by 2, 3, and 5."
fi
#3 end

#4 start
read -r -p "Enter a number: " number

if ((number % 2 == 0 || number % 3 == 0 || number % 5 == 0)); then
	echo "The number is divisible by 2, 3, or 5."
else
	echo "The number is not divisible by 2, 3, or 5."
fi
#4 end

#5 start
touch new_file.txt && chmod +x new_file.txt
#5 end

#6 start
[ -d dir ] || mkdir dir
#6 end

#7 start
Check(){
    if [[ $1 =~ ^-?[[:digit:]]+$ ]]; then
        echo "$1 is an integer."
    else
        echo "$1 is not an integer."
    fi
}

read -p "Enter a number: " num
read -p "Enter the lower limit of the range: " lower
read -p "Enter the upper limit of the range: " upper

Check $num
Check $lower
Check $upper

if ((num >= lower)) && ((num <= upper)); then
    echo "The number is in the specified range."
else
    echo "The number is outside the specified range."
fi
#7 end

#8 start
read -sp "Enter a word: "

if [ "$REPLY" == "Secret" ]; then
	echo "The word matches 'Secret'."
else
	echo "The word does not match 'Secret'."
fi
#8 end

#9 start
read -r -p "Enter a filename: " filename

if [[ "$filename" =~ ^[A-Za-z0-9._-]+$ ]]; then
	touch "$filename"
	echo "File $filename has been created."
else
	echo "Invalid filename."
fi
#9 end

#10 start
read -r -p "Enter the first number: " num1
read -r -p "Enter the operator (+, -, *, /, **): " operator
read -r -p "Enter the second number: " num2

case $operator in
+) result=$((num1 + num2)) ;;
-) result=$((num1 - num2)) ;;
\*) result=$((num1 * num2)) ;;
/) result=$((num1 / num2)) ;;
\*\*) result=$((num1 ** num2)) ;;
*) echo "Invalid operator." ;;
esac

echo "Result of the operation: $result"
#10 end
