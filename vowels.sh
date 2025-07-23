#!/bin/bash
myString=$(cat sampletext.txt | tr 'A-Z' 'a-z')
total_chars=0
total_vowels=0
a_count=0
e_count=0
i_count=0
o_count=0
u_count=0
i=0

while(( i++ < ${myString} )); do
char=$(expr substr "$myString" $i 1)
((total_chars++ ))
if ["$char" == a ]; then
  (( a_count++ ))
  (( total_vowels++ ))
elif ["$char" == e ]; then
  (( e_count++ ))
  (( total_vowels++ ))
elif ["$char" == i ]; then
  (( i_count++ ))
  (( total_vowels++ ))
elif ["$char" == o ]; then
  (( o_count++ ))
  (( total_vowels++ ))
elif ["$char" == u ]; then
  (( u_count++ ))
  (( total_vowels++ ))
fi
done

echo "The total number of characters is $total_chars with $total_vowels vowels"
echo "The breakdown of vowels (a,e,i,o,u) is $a_count a's,  $e_count e's,  $i_count i's, $o_count o's, $u_count u's"
