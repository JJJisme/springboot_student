package com.nb.springboot_student.service;

import com.github.pagehelper.PageInfo;
import com.nb.springboot_student.pojo.Student;

public interface IStudentService {
    PageInfo<Student> getList(int page,int limit);
    int addStudent(Student student);
    int delStudent(int id);
    int updateStudent(Student student);
    Student getById(int id);
}
