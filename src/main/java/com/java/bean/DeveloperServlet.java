package com.java.bean;

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
 * Servlet implementation class DeveloperServlet
 */
@WebServlet("/register")
public class DeveloperServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DeveloperDAO developerDAO;

	public void init() {
		developerDAO = new DeveloperDAO();
	}

	public DeveloperServlet() {
		super();

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		int registerDeveloperID=0;
		
		String developerName = request.getParameter("developerName");
		String developerId = request.getParameter("developerId");
		String developerCode = request.getParameter("developerCode");
		String dob = request.getParameter("dob");
		String phoneNumber = request.getParameter("phoneNumber");
		String emailId = request.getParameter("emailId");
		
		Developer developer = new Developer();
		developer.setDeveloperId(developerId);
		developer.setDeveloperName(developerName);
		developer.setDeveloperCode(developerCode);
		developer.setDob(dob);
		developer.setPhoneNumber(phoneNumber);
		developer.setEmailId(emailId);
		
		 try {
	        	registerDeveloperID = developerDAO.insertDeveloper(developer);
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
		 
		 if(registerDeveloperID >0){
			 request.setAttribute("developerId", developer.getDeveloperId());
			 request.setAttribute("developerName", developer.getDeveloperName());
			 request.setAttribute("developerCode", developer.getDeveloperCode());
			 request.setAttribute("dob", developer.getDob());
			 request.setAttribute("phoneNumber", developer.getPhoneNumber());
			 request.setAttribute("emailId", developer.getEmailId());
			 
			 RequestDispatcher requestDispatcher = request.getRequestDispatcher("DeveloperDetails.jsp");
			 requestDispatcher.forward(request, response);
		 }
		
		
	}

}
