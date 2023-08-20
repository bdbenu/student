package com.bd.benu.employee.service;

import java.util.List;

import com.bd.benu.employee.model.Employee;

public interface EmployeeService {
	
	public Boolean createEmployee(Employee employee);
	
	public List<Employee> employees();
	
	public Employee getEmployeeByEmployeeId(Integer empId);
	
	public void deleteEmployee(Integer empId);
	

}
