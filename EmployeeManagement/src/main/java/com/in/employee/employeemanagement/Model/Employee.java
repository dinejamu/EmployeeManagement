package com.in.employee.employeemanagement.Model;

import javax.persistence.*;

@Entity
public class Employee {

    @Id
    @GeneratedValue(strategy =GenerationType.AUTO)
    private int id;

    private String code;


    private String firstname;


    private String middlename;


    private String lastname;


    private String dob;


    private String gender;

    private String address;


    public Employee(Employee employee) {

    }

    public Employee() {

    }


    public int getId() {
        return id;
    }


    public void setId(int id) {
        this.id = id;
    }


    public String getCode() {
        return code;
    }


    public void setCode(String code) {
        this.code = code;
    }


    public String getFirstname() {
        return firstname;
    }


    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }


    public String getMiddlename() {
        return middlename;
    }


    public void setMiddlename(String middlename) {
        this.middlename = middlename;
    }


    public String getLastname() {
        return lastname;
    }


    public void setLastname(String lastname) {
        this.lastname = lastname;
    }


    public String getDob() {
        return dob;
    }


    public void setDob(String dob) {
        this.dob = dob;
    }


    public String getGender() {
        return gender;
    }


    public void setGender(String gender) {
        this.gender = gender;
    }


    public String getAddress() {
        return address;
    }


    public void setAddress(String address) {
        this.address = address;
    }


    @Override
    public String toString() {
        return "Employee [id=" + id + ", code=" + code + ", firstname=" + firstname + ", middlename=" + middlename
                + ", lastname=" + lastname + ", dob=" + dob + ", gender=" + gender + ", address=" + address + "]";
    }


    public Employee(int id, String code, String firstname, String middlename, String lastname, String dob,
                    String gender, String address) {
        super();
        this.id = id;
        this.code = code;
        this.firstname = firstname;
        this.middlename = middlename;
        this.lastname = lastname;
        this.dob = dob;
        this.gender = gender;
        this.address = address;
    }



}

