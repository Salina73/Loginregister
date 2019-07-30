package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.model.ForgotDao;

@WebServlet("/Forgot")
public class Forgot extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException 
		{
		
		String pass = request.getParameter("password");
		String pass1 = request.getParameter("password2");
		
		ForgotDao dao = new ForgotDao();
		
		if(dao.check(pass, pass1))
		{
			System.out.println("Password changed !!!!!!!!");
			response.sendRedirect("login.jsp");
		}
		else
		{
			System.out.println("Enter valid details !!!!!!!!");
		}
			

	}

}
