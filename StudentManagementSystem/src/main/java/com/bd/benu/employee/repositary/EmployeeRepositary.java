package com.bd.benu.employee.repositary;

import java.io.Serializable;

import org.springframework.data.jpa.repository.JpaRepository;

import com.bd.benu.employee.model.Employee;

public interface EmployeeRepositary extends JpaRepository<Employee,Serializable>{

}
