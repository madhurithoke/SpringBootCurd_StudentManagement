package com.adhyayan.servicei;

import com.adhyayan.model.Course;


public interface CourseServiceI {

	public void saveCourse(Course c);
	
	public Iterable<Course> getAllCourse();
}
