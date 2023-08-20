package com.bd.benu.employee.model;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bd.benu.employee.repositary.EmployeeRepositary;
import com.bd.benu.employee.service.EmployeeService;
@Service
public class EmployeeServiceImpl implements EmployeeService{
	
	@Autowired
	private EmployeeRepositary employeeRepositary;

	@Override
	public Boolean createEmployee(Employee employee) {
		
		return employeeRepositary.save(employee)!=null;
	}

	@Override
	public List<Employee> employees() {
		
		return employeeRepositary.findAll();
	}

	@Override
	public Employee getEmployeeByEmployeeId(Integer empId) {
		Optional<Employee> findById = employeeRepositary.findById(empId);
		if(findById.isPresent()) {
			Employee employee = findById.get();
			return employee;
		}
		return null;
	}

	@Override
	public void deleteEmployee(Integer empId) {
		employeeRepositary.deleteById(empId);
	}

}
