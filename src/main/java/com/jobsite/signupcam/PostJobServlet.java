package com.jobsite.postjob;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PostJobServlet
 */
@WebServlet("/postjob")
public class PostJobServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
	
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String jobPosition = request.getParameter("job_position");
        int jobAvailable = Integer.parseInt(request.getParameter("job_available"));
        int salary = Integer.parseInt(request.getParameter("salary"));
        String applicationDeadline = request.getParameter("application_deadline");
        int companyId = Integer.parseInt(request.getParameter("company_id"));
        RequestDispatcher dispatcher = null;
        Connection con = null;
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobsite?useSSL=false", "root", "");
            PreparedStatement pst = con.prepareStatement("INSERT INTO job (company_id, job_position, job_available, salary, application_deadline) VALUES (?, ?, ?, ?, ?)");
            pst.setInt(1, companyId);
            pst.setString(2, jobPosition);
            pst.setInt(3, jobAvailable);
            pst.setInt(4, salary);
            pst.setDate(5, java.sql.Date.valueOf(applicationDeadline));
            
            int rowCount = pst.executeUpdate();
            dispatcher = request.getRequestDispatcher("postjob.jsp");
            if (rowCount > 0) {
                request.setAttribute("status", "success");
            } else {
                request.setAttribute("status", "failed");
            }
            dispatcher.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}

