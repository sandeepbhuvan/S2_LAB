import java.util.Scanner;

public class product {
  int pcode;
  String pname;
  double price;

  public void readData() {
    Scanner sc = new Scanner(System.in);

    System.out.print("Enter product code:");
    this.pcode = sc.nextInt();

    System.out.print("Enter product name:");
    this.pname = sc.next();

    System.out.print("Enter product price:");
    this.price = sc.nextDouble();
  }

  public static product smallest(product p1, product p2, product p3) {
    if (p1.price < p2.price && p1.price < p3.price)
      return p1;
    else if (p2.price < p1.price && p2.price < p3.price)
      return p2;
    else
      return p3;
  }

  public static void main(String[] args) {
    product p1 = new product();
    product p2 = new product();
    product p3 = new product();

    System.out.println("Enter details for the product 1:");
    p1.readData();
    System.out.println("Enter details for the product 2:");
    p2.readData();
    System.out.println("Enter details for the product 3:");
    p3.readData();

    product smallestProduct = smallest(p1, p2, p3);
    System.out.println(smallestProduct.pname + " is the smallest product with price " + smallestProduct.price);
  }
}
