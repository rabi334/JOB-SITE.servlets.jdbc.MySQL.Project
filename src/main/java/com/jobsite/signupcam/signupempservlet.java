package com.jobsite.signupcam;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class signupempservlet
 */
@WebServlet("/signupemp")
public class signupempservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String empname = request.getParameter("emp_name");
		String empsex = request.getParameter("emp_sex");
		String empbirthdate = request.getParameter("emp_dateofbirth");
		String empaddress = request.getParameter("emp_address");
		String empphoneno = request.getParameter("emp_phoneno");
		String edulevel = request.getParameter("emp_edulevel");
		String profession = request.getParameter("emp_profession");
		String experiance = request.getParameter("emp_experiance");
		String language = request.getParameter("emp_language");
		String empemail = request.getParameter("emp_email");
		String emppassword = request.getParameter("emp_password");
		javax.servlet.RequestDispatcher dispatcher =null;
		Connection con=null;
	
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobsite?useSSL=false","root","");
			PreparedStatement pst = con.prepareStatement("insert into employees(emp_name,emp_sex,emp_dateofbirth,emp_address,emp_phoneno,emp_edulevel,\r\n"
					+ "emp_profession,emp_experiance,emp_language,emp_email,emp_password) values(?,?,?,?,?,?,?,?,?,?,?) ");
			pst.setString(1,empname);
			pst.setString(2,empsex);
			pst.setString(3,empbirthdate);
			pst.setString(4, empaddress);
			pst.setString(5, empphoneno);
			pst.setString(6, edulevel);
			pst.setString(7, profession);
			pst.setString(8, experiance);
			pst.setString(9, language);
			pst.setString(10, empemail);
			pst.setString(11, emppassword);
			
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("signupEmployee.jsp");
			if (rowCount >0) {
				request.setAttribute("status", "success");
			}else {
				request.setAttribute("status", "failed");
			}
			dispatcher.forward(request, response);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
			con.close();
		    }catch(SQLException e){
			   e.printStackTrace();
		    }
		}

	}
	}
