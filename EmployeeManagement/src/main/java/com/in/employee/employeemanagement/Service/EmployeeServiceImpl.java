package com.in.employee.employeemanagement.Service;

import com.in.employee.employeemanagement.Dao.EmployeeSave;
import com.in.employee.employeemanagement.Model.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmployeeServiceImpl implements  EmployeeService{
    @Autowired
    EmployeeSave employeeSave;


    public Employee saveDetails(Employee employee) {
        System.out.println("Serviceclassimpl");
        System.out.println(employee.getFirstname());
        return employeeSave.registor(employee);

    }

    @Override
    public List<Employee> getallemployee() {
        return employeeSave.getall();
    }

    @Override
    public void deleteemployee(Employee empcode) {
         employeeSave.delete(empcode);
    }

    @Override
    public Employee find(String empcode) {
        return employeeSave.findbycode(empcode);
    }
}
