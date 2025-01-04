package com.jobsite.signupcam;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlets
 */
@WebServlet("/login")
public class LoginServlets extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// /**
	// * @see HttpServlet#HttpServlet()
	// */
	// public LoginServlets() {
	// super();
	// // TODO Auto-generated constructor stub
	// }
	//
	// /**
	// * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	// response)
	// */
	// protected void doGet(HttpServletRequest request, HttpServletResponse
	// response) throws ServletException, IOException {
	// // TODO Auto-generated method stub
	// response.getWriter().append("Served at: ").append(request.getContextPath());
	// }
	//
	// /**
	// * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	// response)
	// */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String capmemail = request.getParameter("username");
		String camppassword = request.getParameter("password");
		HttpSession session = request.getSession();
		RequestDispatcher dispatcher = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobsite?useSSL=false", "root",
					"");
			PreparedStatement pst = con
					.prepareStatement("select * from company where company_name =? and company_password =?");
			pst.setString(1, capmemail);
			pst.setString(2, camppassword);
			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				session.setAttribute("name", rs.getString("campname"));
				dispatcher = request.getRequestDispatcher("index.jsp");
			} else {
				request.setAttribute("status", "failed");
				dispatcher = request.getRequestDispatcher("login.jsp");
			}
			dispatcher.forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();

		}
	}

}
