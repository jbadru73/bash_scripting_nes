#!/bin/bash
num1=$1
num2=$2
gcd=1
common_divisor() {
x=$1
if [ $(($num1 % $x)) -eq 0 ] && [ $(($num2 % $x)) -eq 0 ]; then
    return 1
else
    return 0
fi
}
for ((i=1;i<=$num1 && i<=$num2;i++)); do
    common_divisor $i
    if [ $? -eq 1 ]; then
        gcd=$i
    fi
done
echo "The gcd of $num1 and $num2 is: $gcd"
