<%-- 
    Document   : viewMaleOutput
    Created on : 12 Aug 2025, 4:13:19 PM
    Author     : sands
--%>

<%@page import="java.util.Date"%>
<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entity.Employee"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>OutCome Page</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <div class="container2">
        <h1>Outcome</h1>
        <p>Heres a list of all employees.</p>
        <%
            List<Employee> emp = (List<Employee>)request.getAttribute("emp");
            for(int i=0;i<emp.size();i++){
                Employee e = emp.get(i);
                String initials = e.getInitials();
                String surname = e.getSurname();
                String gender = e.getGender();
                int age = e.getAge();
                Date capDate = e.getCaptureDate();
        %>
       
        <table border="1px">
            <tr>
                <td>Initials:</td>
                <td><%=initials%></td>
            </tr>
            <tr>
                <td>Surname:</td>
                <td><%=surname%></td>
            </tr>
            <tr>
                <td>Gender:</td>
                <td><%=gender%></td>
            </tr>
            <tr>
                <td>Age:</td>
                <td><%=age%></td>
            </tr>
            <tr>
                <td>Capture Date:</td>
                <td><%=capDate%></td>
            </tr>
        </table>
            <br>
            <%
                
                }
            %>
        <p>
            Click <a href="menu.jsp">here</a> to back to menu page or <a href="index.html">here</a> to exit.
        </p>
        </div>
    </body>
</html>
