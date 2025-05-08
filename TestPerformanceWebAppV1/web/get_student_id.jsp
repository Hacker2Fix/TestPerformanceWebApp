<%-- 
    Document   : get_student_id
    Created on : 23-Apr-2025, 23:52:06
    Author     : Hello
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get Student Page</title>
    </head>
    <body>
        <h1>Get Student</h1>
        <p>
            Please enter details below to get student.
        </p>
        <form action="GetStudIdServlet.do" method="post">
            <table>
                <tr>
                    <td>Student Number:</td>
                    <td><input type="text" name="id"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="GET STUDENT"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
