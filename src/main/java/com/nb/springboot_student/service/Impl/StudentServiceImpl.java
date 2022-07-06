package com.nb.springboot_student.service.Impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.nb.springboot_student.dao.IStudentDao;
import com.nb.springboot_student.pojo.Student;
import com.nb.springboot_student.service.IStudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentServiceImpl implements IStudentService {
    @Autowired
    IStudentDao iStudentDao;
    @Override
    public PageInfo<Student> getList(int page,int limit) {
        PageHelper.startPage(page,limit);
        List<Student> list = iStudentDao.getList();
        PageInfo<Student> pageInfo = new PageInfo<>(list);
        return pageInfo;
    }

    @Override
    public int addStudent(Student student) {
        iStudentDao.addStudent(student);
        return iStudentDao.addStudent(student);
    }

    @Override
    public int delStudent(int id) {
        return iStudentDao.delStudent(id);
    }

    @Override
    public int updateStudent(Student student) {
        return iStudentDao.updateStudent(student);
    }

    @Override
    public Student getById(int id) {

        return iStudentDao.getById(id);
    }
}
