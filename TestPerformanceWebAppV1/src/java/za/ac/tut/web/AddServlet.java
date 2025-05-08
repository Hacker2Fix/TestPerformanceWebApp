/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.ejb.bl.StudentFacadeLocal;
import za.ac.tut.entities.Student;

/**
 *
 * @author Hello
 */
public class AddServlet extends HttpServlet {
    @EJB private StudentFacadeLocal sfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long id=Long.parseLong(request.getParameter("id"));
        String name=request.getParameter("name");
        String surname=request.getParameter("surname");
        String gender=request.getParameter("gender");
        Integer age=Integer.parseInt(request.getParameter("age"));
        Double mark=Double.parseDouble(request.getParameter("mark"));
        
        Student student=createStud(id,name,surname,gender,age,mark);
        sfl.create(student);
        request.setAttribute("name", name);
        request.setAttribute("surname", surname);
        RequestDispatcher disp = request.getRequestDispatcher("add_outcome.jsp");
        disp.forward(request, response);
    }

    private Student createStud(Long id, String name, String surname, String gender, Integer age, Double mark) {
        Student s=new Student(id, surname, surname, gender, age, mark);
        return s;
    }

}
