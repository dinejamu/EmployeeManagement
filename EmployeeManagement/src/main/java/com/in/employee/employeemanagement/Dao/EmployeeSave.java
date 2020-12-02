package com.in.employee.employeemanagement.Dao;

import com.in.employee.employeemanagement.Model.Employee;
import com.in.employee.employeemanagement.Repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import java.util.List;

@Controller
public class EmployeeSave {
    @Autowired
    EmployeeRepository employeeRepository;

    public Employee registor(Employee employee) {
        System.out.println("DAo");
        System.out.println(employee.getFirstname());
        return employeeRepository.save(employee);
    }

    public List<Employee> getall() {
        return employeeRepository.findAll();
    }

    public void delete(Employee empcode) {
         employeeRepository.delete(empcode);
    }

    public Employee findbycode(String empcode) {
        return employeeRepository.findByCode(empcode);
    }


}
