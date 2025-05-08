<%-- 
    Document   : stud_outcome
    Created on : 24-Apr-2025, 00:58:04
    Author     : Hello
--%>

<%@page import="za.ac.tut.entities.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Outcome Page</title>
    </head>
    <body>
        <h1>Student</h1>
        <%
            Student student=(Student)request.getAttribute("student");
            Long id=student.getId();
            String name=student.getFirstName();
            String surname=student.getLastName();
            String gender=student.getGender();
            Integer age=student.getAge();
            Double mark=student.getPerMarkObtained();
        %>
        <table>
            <tr>
                <td><b>Student no</b></td>
                <td><b>Name</b></td>
                <td><b>Surname</b></td>
                <td><b>Gender</b></td>
                <td><b>Age</b></td>
                <td><b>Marks</b></td>
            </tr>
                <tr>
                    <td><b><%=id%></b></td>
                    <td><b><%=name%></b></td>
                    <td><b><%=surname%></b></td>
                    <td><b><%=gender%></b></td>
                    <td><b><%=age%></b></td>
                    <td><b><%=mark%></b></td>
                </tr>
        </table>
                <p>Please click the button to menu page.</p>
                <a href="start.html"><button>BACK</button></a>
    </body>
</html>
