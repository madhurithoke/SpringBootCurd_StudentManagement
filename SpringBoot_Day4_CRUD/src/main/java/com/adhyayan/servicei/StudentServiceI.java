package com.adhyayan.servicei;

import com.adhyayan.model.Student;

public interface StudentServiceI {
 
	public void saveStudent(Student s);
	
	public Iterable<Student> getAllStudents();
	
   public void deleteStudent(int rno);
   
   public  Student getStudentById(int rno);
   
   public Student loginCheck(String username,String password);
   
}
