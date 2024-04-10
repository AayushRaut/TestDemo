package com.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dao.EmpDAO;
import com.model.Employee;
import com.model.Login;
import com.model.Student;

@Controller
public class MainController {
	@Autowired
	private EmpDAO dao;
	
	@RequestMapping("/empform")
	public String empForm() {
		
		return "addEmpForm";
	}
	
	@RequestMapping(value = "/saveEmp", method =  RequestMethod.POST)
	public String save(@ModelAttribute("emp") Employee emp) {
		
		boolean status = dao.saveDataEmp(emp);
		
		if(status != true) {
			System.out.println("emp success");
		}
		else {
			System.out.println("emp fail");
		}		
		return "addEmpForm";
	}
	
	@RequestMapping(value = "/saveStu" , method =  RequestMethod.POST)
	public String saveStu(@ModelAttribute("stu") Student stu) {
		
		boolean status = dao.saveDataStu(stu);
		
		if(status != true) {
			System.out.println("emp success");
		}
		else {
			System.out.println("emp fail");
		}		
		return "addEmpForm";
	}
	
	@RequestMapping("/signup")
	public String loginForm(@ModelAttribute("stu") Student stu) {
		return "signupForm";
	}
	
	
	@RequestMapping(value = "/login" ,method = RequestMethod.POST)
	public String login(@ModelAttribute("log") Login log) {
		
		
		if(log.getRole().equalsIgnoreCase("student")) {
			List<Student> stu = dao.loginStudent(log);
			
			if(stu.size() != 0) {
				return "redirect:viewStu";
			}else {
				return "signupForm";
			}
		}
		else if(log.getRole().equalsIgnoreCase("employee")) {
			List<Employee> emp = dao.loginEmployee(log);
			
			if(emp.size() != 0) {
				return "redirect:viewEmp";
			}else {
				return "signupForm";
			}
		}
		
		return "signupForm";
	}
	
	@RequestMapping("/viewEmp")
	public String viewEmployee(Model m) {
		m.addAttribute("emplist",dao.getAllEmployee());
		return "empView";
	}
	
	@RequestMapping("/viewStu")
	public String viewStudent(Model m) {
		m.addAttribute("stulist",dao.getAllStudent());
		return "stuView";
	}
	
	@RequestMapping("/deleteEmp/{id}")
	public String deleteEmployee(Model m,@PathVariable("id") int id) {
		dao.deleteEmp(id);
		return "stuView";
	}
	@RequestMapping("/deleteStu/{id}")
	public String deleteStudent(Model m,@PathVariable("id") int id) {
		dao.deleteStd(id);
		return "stuView";
	}
	
	@RequestMapping("editemp/{id}") 
	public String editEmp(@PathVariable int id, Model m) {
		Employee emp = dao.getEmpById(id);
		System.out.println("Id "+emp.getEmpid());
		m.addAttribute("emp", emp);
		return "editEmp";
	}
	
	@RequestMapping(value = "/updateemp", method = RequestMethod.POST)
	public String updateEmployee(@ModelAttribute("emp") Employee emp) {
		dao.updateEmp(emp);
		return "redirect:/viewEmp";
	}
	
	@RequestMapping("editstu/{id}")
	public String editStu(@PathVariable int id, Model m) {
		Student stu = dao.getStuById(id);
		m.addAttribute("stu", stu);
		return "editStu";
	}
	
	@RequestMapping(value = "/updatestu", method = RequestMethod.POST)
	public String updateStudent(@ModelAttribute("stu") Student stu) {
		dao.updateStu(stu);
		return "redirect:/viewStu";
	}
	
	
	
	
	
}
