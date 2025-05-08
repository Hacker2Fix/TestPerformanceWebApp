<%-- 
    Document   : stats_outcome
    Created on : 24-Apr-2025, 00:29:02
    Author     : Hello
--%>

<%@page import="za.ac.tut.entities.Student"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Stats Page</title>
    </head>
    <body>
        <h1>Statistics</h1>
        <%
            Integer numStud=(Integer)request.getAttribute("numStud");
            Integer maleStuds=(Integer)request.getAttribute("maleStuds");
            Integer passedStuds=(Integer)request.getAttribute("passedStuds");
            Double highMarks=(Double)request.getAttribute("highMarks");
            Double lowMarks=(Double)request.getAttribute("lowMarks");
            List<Student> student=(List<Student>)request.getAttribute("studs");
        %>
        <table>
            <tr>
                <td><b>Student no: <%=numStud%></b></td>
                <td><b>Highest Mark: <%=highMarks%></b></td>
                <td><b>Lowest Mark: <%=lowMarks%></b></td>
                <td><b>Male students: <%=maleStuds%></b></td>
                <td><b>Student Passed: <%=passedStuds%></b></td>
            </tr>
            <tr>
                <td></td>
                <td><b>Student no</b></td>
                <td><b>Name</b></td>
                <td><b>Surname</b></td>
                <td><b>Gender</b></td>
                <td><b>Age</b></td>
                <td><b>Marks</b></td>
            </tr>
            <%
                for(int i=0;i<student.size();i++){
                    Student s=student.get(i);
                    Long id=s.getId();
                    String name=s.getFirstName();
                    String surname=s.getLastName();
                    String gender=s.getGender();
                    Integer age=s.getAge();
                    Double mark=s.getPerMarkObtained();
                
                %>
                <tr>
                    <td><b><%=i%></b></td>
                    <td><b><%=id%></b></td>
                    <td><b><%=name%></b></td>
                    <td><b><%=surname%></b></td>
                    <td><b><%=gender%></b></td>
                    <td><b><%=age%></b></td>
                    <td><b><%=mark%></b></td>
                </tr>
            <%}%>
            
        </table>
                <p>Please click the button to menu page.</p>
                <a href="start.html"><button>BACK</button></a>
    </body>
</html>
