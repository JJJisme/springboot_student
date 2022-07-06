package com.nb.springboot_student.control;


import com.github.pagehelper.PageInfo;

import com.nb.springboot_student.pojo.Student;
import com.nb.springboot_student.service.Impl.StudentServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class StudentHandle {
    @Autowired
    StudentServiceImpl studentService;

    @RequestMapping("Student")
    @ResponseBody
    PageInfo<Student> getList(@RequestParam(defaultValue = "1") int page,
                              @RequestParam(defaultValue = "5")int limit){

        return studentService.getList(page,limit);
    }

    @RequestMapping("addStudent")
    String addStudent(Student student){
        studentService.addStudent(student);
        return "redirect:/student.html";
    }

    @RequestMapping("delStudent")
    @ResponseBody
    Integer delStudent(int id){
        studentService.delStudent(id);
        return 0;
    }

    @RequestMapping("updateStudent")
    String updStudent(Student student){
        studentService.updateStudent(student);
        return "redirect:/student.html";
    }

    @RequestMapping("getById")
    @ResponseBody
    Student getById(int id){
        return studentService.getById(id);
    }

}
