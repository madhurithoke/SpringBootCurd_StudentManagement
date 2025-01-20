package com.adhyayan.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.adhyayan.model.Student;
import com.adhyayan.repository.StudentRepository;
import com.adhyayan.servicei.StudentServiceI;

@Service
public class StudentServiceImpl
implements StudentServiceI {
	
@Autowired 
StudentRepository sr;

     @Override
	public void saveStudent(Student s) {
		System.out.println("In service......");
		System.out.println(s.getSname());
		sr.save(s);
	}
	
     @Override
     public Iterable<Student> getAllStudents(){
    	 return sr.findAll();
     }

	@Override
	public void deleteStudent(int rno) {
		sr.deleteById(rno);
		
	}

	@Override
	public Student getStudentById(int rno) {
		
		return sr.findByRno(rno);
	}

	@Override
	public Student loginCheck(String username, String password) {
		
		return sr.findByUsernameAndPassword(username, password);
	}
}
