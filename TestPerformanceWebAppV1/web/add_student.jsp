<%-- 
    Document   : add_student
    Created on : 23-Apr-2025, 22:02:13
    Author     : Hello
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Student Page</title>
    </head>
    <body>
        <h1>Add Student</h1>
        <p>
            Please add student details below:
        </p>
        <form action="AddServlet.do" method="post">
            <table>
                <tr>
                    <td>Student Number:</td>
                    <td><input type="text" name="id"></td>
                </tr>
                <tr>
                    <td>First Name:</td>
                    <td><input type="text" name="name"></td>
                </tr>
                <tr>
                    <td>Last Name:</td>
                    <td><input type="text" name="surname"></td>
                </tr>
                <tr>
                    <td>Gender:</td>
                    <td>
                        <select name="gender">
                            <option value="M">Male</option>
                            <option value="F">Female</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Age:</td>
                    <td><input type="text" name="age"></td>
                </tr>
                <tr>
                    <td>Marks:</td>
                    <td><input type="text" name="mark"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="ADD"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
