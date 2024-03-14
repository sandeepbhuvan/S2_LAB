echo "Enter a number"
read num
reverse=0
original=$num
while [ $num -ne 0 ]
do
  rem=$(( $num % 10 ))
  reverse=$(( $reverse * 10 + $rem ))
  num=$(( $num / 10 ))
done 
if [ $original -eq $reverse ]
then
 echo "palindrome"
else
 echo "not a palindrome"
fi
