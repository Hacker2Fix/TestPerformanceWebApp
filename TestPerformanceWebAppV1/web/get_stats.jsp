<%-- 
    Document   : get_stats
    Created on : 23-Apr-2025, 22:08:38
    Author     : Hello
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Statistic Page</title>
    </head>
    <body>
        <h1>Test Statistic</h1>
        <p>
            Please click the button below to get test stats.
        </p>
        <form action="GetStatsServlet.do" method="get">
            <table>
                <tr>
                    <td></td>
                    <td><input type="submit" value="GET STATS"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
