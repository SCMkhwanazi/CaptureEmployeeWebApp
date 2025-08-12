/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.bl.EmployeeFacadeLocal;
import za.ac.tut.entity.Employee;

/**
 *
 * @author sands
 */
public class captureEmpServlet extends HttpServlet {
    @EJB EmployeeFacadeLocal efl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String initials = request.getParameter("initials");
        String surname = request.getParameter("surname");
        String gender = request.getParameter("gender");
        int age = Integer.parseInt(request.getParameter("age"));
        Employee emp = createEmp(initials,surname,gender,age);
        efl.create(emp);
        
        RequestDispatcher disp = request.getRequestDispatcher("captureOutput.jsp");
        disp.forward(request, response);
    }

    private Employee createEmp(String initials, String surname, String gender, int age) {
        Employee emp = new Employee();
        emp.setAge(age);
        emp.setCaptureDate(new Date());
        emp.setGender(gender);
        emp.setInitials(initials);
        emp.setSurname(surname);
        return emp;
    }


}
