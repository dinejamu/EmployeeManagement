package com.in.employee.employeemanagement.Repository;

import com.in.employee.employeemanagement.Model.Employee;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Integer> {
   // void delete(String empcode);

    Employee findByCode(String code);
}
