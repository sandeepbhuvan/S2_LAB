public class Factorial{
    public static void main(String[] args)
   {
      int num=5;
      long fact=1;
      for(int i=0; i<=num;i++)
     {
        fact=fact*i;
     }
     System.out.println("Factorial of %d=%d",num,fact);
   }
}
      
