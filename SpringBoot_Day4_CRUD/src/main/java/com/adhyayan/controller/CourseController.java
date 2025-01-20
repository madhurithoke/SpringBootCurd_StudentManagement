package com.adhyayan.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.adhyayan.model.Course;
import com.adhyayan.servicei.CourseServiceI;

@Controller
public class CourseController {

	@Autowired
	CourseServiceI ci;
	
	
	@RequestMapping("course")
	public String coursePage(Model m) {
		Iterable<Course> courseList = ci.getAllCourse();
        m.addAttribute("coursedata", courseList );
		return "course";
	} 
	
}
