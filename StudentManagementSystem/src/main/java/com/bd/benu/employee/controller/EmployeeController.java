package com.bd.benu.employee.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.bd.benu.employee.model.Employee;
import com.bd.benu.employee.service.EmployeeService;

@Controller
public class EmployeeController {
	
	@Autowired
	private EmployeeService employeeService;
	
	@GetMapping(value = {"/","/load"})
	public String loadPage(Model model) {
		
		Employee employee = new Employee();
		model.addAttribute("employee", employee);
		
		return"home";
	}

	@PostMapping("/created")
	public String createEmployee(@ModelAttribute Employee employee,Model model) {
		
	
		Boolean createEmployee = employeeService.createEmployee(employee);
		if(createEmployee) {
			model.addAttribute("Employee Created Successsed", createEmployee);
			
			return "redirect:/load";
		}else {
			model.addAttribute("Employee Created failed", createEmployee);
		}
		return"home";
	}
	
	//@ResponseBody
	/*@GetMapping("/employees")
	public List<Employee> employees(Model model) {
		List<Employee> employees = employeeService.employees();
	if(employees!=null) {
		model.addAttribute("employees", employees);
	}else {
		model.addAttribute("No Record Found", employees);

	}
	
		
		return employees;
	}*/
	
	@GetMapping("/employees")
	public String studentDetails(Model model) {
		
		List<Employee> employees = employeeService.employees();
		if(employees!=null) {
			model.addAttribute("employees", employees);
		}else {
			model.addAttribute("No Record Found", employees);

		}
		return "employees";
	}

	@GetMapping("/editstudent")
	public String editPage(Model model) {
		
		Employee employee = new Employee();
		model.addAttribute("employee", employee);
		
		return"edit_student";
	}
	
	/*@GetMapping("/edit/{empId}")
	public Employee getOneStudent(@PathVariable("empId")Integer empId) {
		Employee employeeByEmployeeId = employeeService.getEmployeeByEmployeeId(empId);
		if(employeeByEmployeeId!=null) {
			
			return employeeByEmployeeId;
			
		}
		return null;
	}*/
	@GetMapping("/edit/{empId}")
	public String editPage(@PathVariable("empId")Integer empId,Model model) {
		
		Employee employee = employeeService.getEmployeeByEmployeeId(empId);
		model.addAttribute("employee", employee);
		return"edit_employee";
	}
	
	@GetMapping("/delete/{empId}")
	public String deleteEmployee(@PathVariable("empId")Integer empId,Model model) {
		
		employeeService.deleteEmployee(empId);
		
		return"redirect:/employees";
	}
}
