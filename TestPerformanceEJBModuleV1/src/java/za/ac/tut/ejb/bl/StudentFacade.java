/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package za.ac.tut.ejb.bl;

import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import za.ac.tut.entities.Student;

/**
 *
 * @author Hello
 */
@Stateless
public class StudentFacade extends AbstractFacade<Student> implements StudentFacadeLocal {

    @PersistenceContext(unitName = "TestPerformanceEJBModuleV1PU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public StudentFacade() {
        super(Student.class);
    }

    @Override
    public Student find(String firstName, String lastName) {
        Query query=em.createQuery("SELECT s FROM Student s WHERE s.firstName =:fname AND s.lastName :lname ");
        query.setParameter("fname", firstName);
        query.setParameter("lname", lastName);
        Student stud=(Student)query.getSingleResult();
        return stud;
    }

    @Override
    public Integer cntMaleStudents() {
        Query query=em.createQuery("SELECT COUNT(s) FROM Student s WHERE s.gender='M' ");
        Integer cnt=(Integer)query.getSingleResult();
        
        
        return cnt;
    }

    @Override
    public Integer cntPassedStudents() {
        Query query=em.createQuery("SELECT COUNT(s) FROM Student s WHERE s.perMarkObtained > 49");
        Integer cnt=(Integer)query.getSingleResult();
        
        return cnt;
    }

    @Override
    public Double getHighestMark() {
        Query query=em.createQuery("SELECT MAX(s.perMarkObtained) FROM Student s");
        Double mark=(Double)query.getSingleResult();
        return mark;
    }

    @Override
    public Double getLowestMark() {
        Query query=em.createQuery("SELECT MIN(s.perMarkObtained) FROM Student s");
        Double mark=(Double)query.getSingleResult();
        return mark;
    }

    @Override
    public int cnt() {
        Query query=em.createQuery("SELECT COUNT(s) FROM Student s");
        Integer cnt=(Integer)query.getSingleResult();
        
        return cnt;
    }

    @Override
    public List<Student> findStudentsWithinAgeRange(Integer minAge, Integer maxAge) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
