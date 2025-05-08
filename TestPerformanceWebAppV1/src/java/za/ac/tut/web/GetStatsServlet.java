/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
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
public class GetStatsServlet extends HttpServlet {

    @EJB private StudentFacadeLocal sfl;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Student> studs =sfl.findAll();
        Integer numStud=sfl.cnt();
        Integer maleStuds=sfl.cntMaleStudents();
        Integer passedStuds=sfl.cntPassedStudents();
        Double highMarks=sfl.getHighestMark();
        Double lowMarks=sfl.getLowestMark();
        
        request.setAttribute("studs", studs);
        request.setAttribute("numStud", numStud);
        request.setAttribute("maleStuds", maleStuds);
        request.setAttribute("passedStuds", passedStuds);
        request.setAttribute("highMarks", highMarks);
        request.setAttribute("lowMarks", lowMarks);
        
        
        RequestDispatcher disp = request.getRequestDispatcher("stats_outcome.jsp");
        disp.forward(request, response);
    }

}
