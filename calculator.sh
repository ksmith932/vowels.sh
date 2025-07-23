#!/bin/bash

echo "Welcome to the whole number calculator. Please enter the first number." 
read num1
echo "Please enter the second number."
read num2
echo "Please enter the operator [a] add, [m] multiply, [d] divide, [s] subtract."
read operator

usrchoice=$(  echo "$operator" | tr A-Z a-z )

if ! [[ "num1' =~ ^-?[0-9]+$ ]] || "num2' =~ ^-?[0-9]+$ ]]; then
echo "You must enter two numbers."
exit

elif [[ "$usrchoice" != "a" && "$usrchoice" != "m" && "$usrchoice" != "d" && "$usrchoice" != "s" ]]; then
echo "You must have the correct operator: [a] add, [m] multiply, [d] divide, [s] subtract."
exit

elif [[ "$usrchoice" == "a" ]]; then
echo "the sum of the two numbers is $(( $num1 + $num2 ))"

elif [[ "$usrchoice" == "s" ]]; then
echo "the difference of the two numbers is $(( $num1 - $num2 ))"

elif [[ "$usrchoice" == "m" ]]; then
echo "the product of the two numbers is $(( $num1 * $num2 ))"

elif [[ "$usrchoice" == "d" ]]; then
if [[ "$num1" == 0 || "$num2" == 0 ]]; then
echo "You cannot divide by zero"
exit
fi
echo "the quotient is $(( $num1 / $num2 )) with a whole remainder of $(( $num1 % $num2))"
fi
