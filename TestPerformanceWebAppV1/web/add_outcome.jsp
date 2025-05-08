<%-- 
    Document   : add_outcome
    Created on : 24-Apr-2025, 00:13:07
    Author     : Hello
--%>

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
            String name=(String)request.getAttribute("name");
            String surname=(String)request.getAttribute("surname");
        %>
        <table>
            <tr>
                <td><b><%=name%></b> <b><%=surname%></b></td>
                <td>is persisted successfully.</td>
            </tr>
        </table>
                <p>Please click the button to menu page.</p>
                <a href="start.html"><button>BACK</button></a>
    </body>
</html>
