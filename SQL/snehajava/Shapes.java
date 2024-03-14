public class Shapes{
   
   public double  area(double length, double width){
       return length*width;
   }
   
   public double area(double side){
       return side*side;
   }
   public double area(int base, double height){
       return 0.5*base*height;
   }

 
   public static void main( String[] args){ 
      Shapes sh = new Shapes();
      double rectarea= sh.area(5,10);
      System.out.println("AREA OF RECTANGLE IS:"+ rectarea);
      double squarearea= sh.area(3);
      System.out.println("AREA OF SQUARE IS:"+ squarearea);
      double triarea= sh.area(4,7);
      System.out.println("AREA OF TRIANGLE IS:"+ triarea);
  }
}
