package models;


public class Employee extends Person {
    
    String employeeDesignation;
    
    
    public Employee(String f, String e, String d)
    {
        super(f,e);
        employeeDesignation = d;
    }
}
