package com.java.bean;

import java.io.IOException;
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.util.ArrayList;
//import java.util.List;
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

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TaskServlet
 */
@WebServlet("/taskprocess")
public class TaskServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private TaskDAO taskDAO;

	public void init() {
		taskDAO = new TaskDAO();
		
	}

	public TaskServlet() {
		super();

	}

	/*
	 * protected void doGet(HttpServletRequest request, HttpServletResponse
	 * response) throws ServletException, IOException { // TODO Auto-generated
	 * method stub
	 * response.getWriter().append("Served at: ").append(request.getContextPath( ));
	 * }
	 */

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int taskdevID = 0;
		Developer developer = new Developer();

		String taskName = request.getParameter("taskName");
		String developerName = request.getParameter("developerName");
		String description = request.getParameter("description");
		String status = request.getParameter("status");
		String timeLine = request.getParameter("timeLine");
		String email = request.getParameter("email");

		TaskDTO taskDTO = new TaskDTO();
		
		taskDTO.setTaskName(taskName);
		taskDTO.setDeveloperName(developerName);
		taskDTO.setEmail(email);
		taskDTO.setDescription(description);
		taskDTO.setStatus(status);
		taskDTO.setTimeLine(timeLine);

		try {
			taskdevID = taskDAO.insertTask(taskDTO);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		if (taskdevID > 0) {
			request.setAttribute("taskName", taskDTO.getTaskName());
			request.setAttribute("developerName", taskDTO.getDeveloperName());
			request.setAttribute("email", taskDTO.getEmail());
			request.setAttribute("description", taskDTO.getDescription());
			request.setAttribute("status", taskDTO.getStatus());
			request.setAttribute("timeLine", taskDTO.getTimeLine());

			RequestDispatcher requestDispatcher = request.getRequestDispatcher("taskDetails.jsp");
			requestDispatcher.forward(request, response);
		}

	}

}