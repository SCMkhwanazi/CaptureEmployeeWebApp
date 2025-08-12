/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
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
public class viewAllEmpServlet extends HttpServlet {
    @EJB EmployeeFacadeLocal efl;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Employee> emp = efl.findAll();
        request.setAttribute("emp", emp);
        
        RequestDispatcher disp = request.getRequestDispatcher("viewAllOutput.jsp");
        disp.forward(request, response);
    }

}
