
class prime {
    public static void main(String[] args) {
        int c=7,flag=0;
        for(int i=2;i<c/2;i++)
        {
            if(c%i==0)
            {
               flag=1;
            }
        }
        if(flag==0)
        {
            System.out.println("Number is Prime");
        }
        else
        {
            System.out.println("Number is Not Prime");
        }
    }
}