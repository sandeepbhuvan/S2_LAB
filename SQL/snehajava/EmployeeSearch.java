import java.util.Scanner;

class Employee{
   int eNo;
   String eName;
   double eSalary;
}

public class EmployeeSearch{
   public static void main(String[] args){
      Scanner sc= new Scanner(System.in);

      System.out.print("Enter the number of employees");
      int n= sc.nextInt();
      
      Employee[] employees = new Employee[n];

      for(int i=0;i<n;i++){
        employees[i] = new Employee();
        System.out.print("Enter details for employee"+(i+1) + ":");
        System.out.print("Employee Number: ");
        employees[i].eNo = sc.nextInt();
        System.out.print("Employee Name:  ");
        employees[i].eName = sc.next();
        System.out.print("Employee Salary: ");
        employees[i].eSalary= sc.nextInt();
    }
  System.out.println("Enter the employee number to search:");
  int search = sc.nextInt();

  boolean found= false;
  for(int i =0;i<n; i++){
   if(employees[i].eNo == search){
     System.out.print("EMPLOYEE FOUND!!!");
     System.out.print("Employee Number: "+ employees[i].eNo);
     System.out.print("Employee Name: "+ employees[i].eName);
     System.out.print("Employee Salary: "+ employees[i].eSalary);
     found= true;
     break;
 }
}

if(!found){
  System.out.println("EMPLOYEE NOT FOUND");
}

 sc.close();
}
}

     


