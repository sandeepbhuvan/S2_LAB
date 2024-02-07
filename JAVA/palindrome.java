public class palindrome {
    public static void main(String[] args) {
        int temp,r;
        int sum=0;
        int n=3452543;
        temp=n;    
        while(n>0){    
           r=n%10;
           sum=(sum*10)+r;    
           n=n/10;    
          }
          if(temp==sum)    
           System.out.println("Palindrome Number ");    
          else    
           System.out.println("Not Palindrome");    
        }
}
