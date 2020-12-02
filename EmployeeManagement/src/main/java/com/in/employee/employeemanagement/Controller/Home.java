package com.in.employee.employeemanagement.Controller;

import com.in.employee.employeemanagement.Model.Employee;
import com.in.employee.employeemanagement.Service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;


@Controller
public class Home {

    @Autowired
    EmployeeService employeeService;


    @RequestMapping("/")
    public String view(){
        return "index";
    }
    /*@RequestMapping("updateemp")
    public String updateview(){
        return "update";
    }*/
    @RequestMapping("view")
    public ModelAndView home(ModelAndView mv) {
        List<Employee> employees=employeeService.getallemployee();
        System.out.println(employees);
        mv.addObject("object",employees);
        mv.setViewName("welcome");
        return mv;

    }
    @RequestMapping(value = "save", method = RequestMethod.POST)
    public ModelAndView save(Employee employee) {
        ModelAndView mv = new ModelAndView();
        Employee object=employeeService.find(employee.getCode());
        if(object==null){
            employeeService.saveDetails(employee);
            mv.addObject("successinsert","Employee details Inserted Successfully ");
            mv.setViewName("index");
        }else {
            mv.addObject("codeduplicate","Employee code Invaild");
            mv.setViewName("registor");
        }

        return mv;
    }
    @RequestMapping(value = "/deleteEmployee", method = RequestMethod.GET)
    public ModelAndView delete(ModelAndView mv, HttpServletRequest request) {
    String empcode=request.getParameter("code");
    Employee emp=employeeService.find(empcode);
    employeeService.deleteemployee(emp);
    mv.addObject("successdelete","Employee details deleted Successfully ");
    mv.setViewName("index");
        return mv;
    }
    @RequestMapping(value = "/editEmployee", method = RequestMethod.GET)
    public ModelAndView update(ModelAndView mv, HttpServletRequest request) {
        String empcode=request.getParameter("code");
        Employee empobj=employeeService.find(empcode);
        System.out.println(empobj);
        mv.addObject("employee",empobj);
        if(empobj!=null){
            mv.setViewName("update");
        }
        else{
            mv.addObject("denyupdate","Something Wrong try again! ");
            mv.setViewName("index");
        }
        return mv;
    }

    @RequestMapping(value = "/updateEmployee", method = RequestMethod.POST)
    public ModelAndView updateemp(ModelAndView mv, Employee employee) {
        Employee object=employeeService.find(employee.getCode());
        if(object==null){
            employeeService.saveDetails(employee);
            mv.addObject("successupdate","Employee details Updated Successfully ");
            mv.setViewName("index");
        }else {
            mv.addObject("denyupdate","Something Wrong try again! ");
            mv.setViewName("index");
        }
        return mv;
    }
}
