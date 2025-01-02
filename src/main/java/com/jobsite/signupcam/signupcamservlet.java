package com.jobsite.signupcam;

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class signupcamservlet
 */
@WebServlet("/signupcamp")
public class signupcamservlet extends HttpServlet {
	public static final long serialVersionUID = 1L;
	public static final RequestDispatcher dispatcher  = null;
       
//    /**
//     * @see HttpServlet#HttpServlet()
//     */
//    public signupcamservlet() {
//        super();
//        // TODO Auto-generated constructor stub
//    }
//
//	/**
//	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//	}
//
//	/**
//	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
//	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String campname = request.getParameter("company_name");
		String campaddress = request.getParameter("company_address");
		String campphoneno = request.getParameter("company_phoneno");
		String campemail = request.getParameter("company_email");
		String camppassword = request.getParameter("company_password");
		String campmanagername = request.getParameter("company_managername");
		javax.servlet.RequestDispatcher dispatcher =null;
		Connection con=null;
	
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobsite?useSSL=false","root","");
			PreparedStatement pst = con.prepareStatement("insert into company(company_name,company_address,company_phoneno,company_email,company_password,company_managername) values(?,?,?,?,?,?) ");
			pst.setString(1, campname);
			pst.setString(2, campaddress);
			pst.setString(3, campphoneno);
			pst.setString(4, campemail);
			pst.setString(5, camppassword);
			pst.setString(6, campmanagername);
			
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("signupcam.jsp");
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
