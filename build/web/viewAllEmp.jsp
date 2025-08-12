<%-- 
    Document   : viewAllEmp
    Created on : 05 Aug 2025, 3:52:33 PM
    Author     : sands
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View_All_Employees Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <div class="container">
        <h1>View All Employees</h1>
        <p>Click button below to view all employees or back to go to menu page.</p>
        
        <form action="viewAllEmpServlet.do" method="GET">
            <table>
                <tr>
                    <td></td>
                    <td><input type="submit" class="btn btn-outline-primary" value="VIEW EMPLOYEES"/></td>
                </tr>
            </table>
        </form>
        <form action="backServlet.do" method="GET">
            <table>
                <tr>
                    <td></td>
                    <td><input type="submit" class="btn btn-outline-primary" value="BACK TO MENU"/></td>
                </tr>
            </table>
        </form>
        </div>
    </body>
</html>
