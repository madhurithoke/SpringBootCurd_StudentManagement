package com.adhyayan.controller;

import java.util.ArrayList;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.adhyayan.model.Student;
import com.adhyayan.servicei.StudentServiceI;



@Controller
public class LoginController {
	
	@Autowired
	StudentServiceI si;
	
	
	
	@RequestMapping("/")
	public String homePg() {
		 return "home";
	}
	
	@RequestMapping("/login")
	public String loginPg() {
	
		 return "login";
	}
	
	
	@RequestMapping("/loginsuccess")
	public String loginSuccessPg(@RequestParam("username") String un,
	                             @RequestParam("password") String ps, Model m) {

	    if ("admin".equals(un) && "1234".equals(ps)) {
	        Iterable<Student> studentList = si.getAllStudents();
	        m.addAttribute("data", studentList);
	        return "loginsuccess";
	    }

	    
	    Student student = si.loginCheck(un, ps);
	    if (student != null) {
	        List<Student> singleStudent = new ArrayList<>();
	        singleStudent.add(student);
	        m.addAttribute("data", singleStudent);
	        return "loginsuccess";
	    }

	    // Login failed
	    m.addAttribute("error", "Invalid username or password.");
	    return "login";
	}

	
	@RequestMapping("/register")
	public String register() {
		 return "register";
	}
	
	@RequestMapping("/registersuccess")
	public String regSuccessPg(@ModelAttribute Student s){
		System.out.println("In Controller.....");
		System.out.println(s.getSname());
		si.saveStudent(s);
		return "login";
	}
	
	@RequestMapping("/delete")
	public String deleteStudent(@RequestParam("rno") int rno,Model m){
		si.deleteStudent(rno);
		Iterable<Student> studentList=si.getAllStudents();
		m.addAttribute("data", studentList);
		return "loginsuccess";
	}
	
	@RequestMapping("/edit")
	public String editPage(@RequestParam("rno") int rno,Model m) {
		Student st= si.getStudentById(rno);
		m.addAttribute("stu", st);
		return "edit";
	}
	
	@RequestMapping("/update")
   public String update(@ModelAttribute Student stu,Model m) {
		si.saveStudent(stu);
		Iterable<Student> studentList=si.getAllStudents();
		m.addAttribute("data", studentList);
	  return "loginsuccess"; 
   }
	
	
}
