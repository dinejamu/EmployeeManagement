package com.in.employee.employeemanagement.Service;

import com.in.employee.employeemanagement.Model.Employee;

import java.util.List;

public interface EmployeeService {


    Employee saveDetails(Employee employee);

    List<Employee> getallemployee();

    void deleteemployee(Employee empcode);

    Employee find(String empcode);
}
