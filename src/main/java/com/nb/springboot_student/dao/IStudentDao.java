package com.nb.springboot_student.dao;

import com.nb.springboot_student.pojo.Student;

import java.util.List;

public interface IStudentDao {
    List<Student> getList();
    int addStudent(Student student);
    int delStudent(int id);
    int updateStudent(Student student);
    Student getById(int id);
}
