read -p "Enter password :" pass1
read -p "Re-Enter password :" pass2
if [ pass1 -ne pass2 ] 
then
  echo "access denied"
else
  echo "access granted"
fi
