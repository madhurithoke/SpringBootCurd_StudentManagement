package com.adhyayan.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.adhyayan.model.Course;
import com.adhyayan.repository.CourseRepository;
import com.adhyayan.servicei.CourseServiceI;

@Service
public class CourseServiceImpl implements CourseServiceI {

	@Autowired
	CourseRepository cr;

	
	 @Override
		public void saveCourse(Course c) {
			System.out.println("In service......");
			System.out.println(c.getCname());
			cr.save(c);
		}


	@Override
	public Iterable<Course> getAllCourse() {
		
		
		return cr.findAll();
	}
}
