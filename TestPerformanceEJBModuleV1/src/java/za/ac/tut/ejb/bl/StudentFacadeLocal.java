/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package za.ac.tut.ejb.bl;

import java.util.List;
import javax.ejb.Local;
import za.ac.tut.entities.Student;

/**
 *
 * @author Hello
 */
@Local
public interface StudentFacadeLocal {

    void create(Student student);

    void edit(Student student);

    void remove(Student student);

    Student find(Object id);
    Student find(String firstName,String lastName);

    List<Student> findAll();
    Integer cntMaleStudents();
    Integer cntPassedStudents();
    Double getHighestMark();
    Double getLowestMark();
    int cnt();
    
    List<Student> findStudentsWithinAgeRange(Integer minAge,Integer maxAge);
    List<Student> findRange(int[] range);

    int count();
    
}
