package com.adhyayan.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.adhyayan.model.Student;
import java.util.List;


@Repository
public interface StudentRepository extends CrudRepository<Student,Integer>{
	
	
	public Student findByRno(int rno);
    
	public Student findByUsernameAndPassword(String username,String passsword);
}
