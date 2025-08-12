<%-- 
    Document   : captureEmp
    Created on : 05 Aug 2025, 3:41:24 PM
    Author     : sands
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Capture_Employees_Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <div class="container">
        <h1>Capture Employees</h1>
        <p>Please enter details of employee you want to capture below.</p>
        <form action="captureEmpServlet.do" method="POST">
            <table>
                <div class="mb-3">
                    <tr>
                        <td>Initials:</td>
                        <td><input type="text" class="form-control" name="initials" required=""/></td>
                    </tr>
                </div>
                <div class="mb-3">
                    <tr>
                        <td>Surname:</td>
                        <td><input type="text" class="form-control" name="surname" required=""/></td>
                    </tr>
                </div>
                
                <div class="mb-3">
                    <tr>
                        <td>Gender:</td>
                        <td>
                            <select class="form-select" name="gender">
                                <option value="Male">Male</option>
                                <option value="Female">Female</option>
                            </select>
                        </td>
                    </tr>
                </div>
                <div class="mb-3">
                    <tr>
                        <td>Age:</td>
                        <td><input type="text" class="form-control" name="age" required=""/></td>
                    </tr>
                <div class="mb-3">
                <tr>
                    <td></td>
                    <td><input type="submit" class="btn btn-outline-primary" value="CAPTURE EMPLOYEE"/></td>
                </tr>
            </table>
        </form>
        </div>
    </body>
</html>
