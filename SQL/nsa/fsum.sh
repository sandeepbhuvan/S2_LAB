sum(){
      read -p "Enter first number" a
      read -p "Enter second number" b
      sum=`expr $a + $b`
      echo $sum
     }
sum
