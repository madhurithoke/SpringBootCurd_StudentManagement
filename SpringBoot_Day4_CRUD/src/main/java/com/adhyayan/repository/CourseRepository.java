package com.adhyayan.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.adhyayan.model.Course;

@Repository
public interface CourseRepository extends CrudRepository<Course,Integer> {
	
  
}
