read -p "Enter age" age
echo $age
if [ $age -ge 18 ]
then
   echo "eligible for voting"
else
   echo "not eligible"
fi
