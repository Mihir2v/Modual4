package com.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


import com.bean.Student;
import com.dao.StudentDao;

@WebServlet("/StudentController")
public class StudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String action=request.getParameter("action");
		
		if(action.equalsIgnoreCase("insert"))
		{
			Student s=new Student();
			s.setFname(request.getParameter("fname"));
			s.setLname(request.getParameter("lname"));
			s.setEmail(request.getParameter("email"));
			s.setMobile(request.getParameter("mobile"));
			s.setAddress(request.getParameter("address"));
			s.setGender(request.getParameter("gender"));
			StudentDao.insertStudent(s);
			//response.sendRedirect("Show.jsp");
			request.setAttribute("msg", "data inserted successfully");
			request.getRequestDispatcher("Insert.jsp").forward(request,response);
		}
		else if(action.equalsIgnoreCase("EDIT"))
		{
			int id= Integer.parseInt(request.getParameter("id"));
			Student  s=StudentDao.getStudent(id);
			request.setAttribute("s", s);
			request.getRequestDispatcher("update.jsp").forward(request, response);
		}
		else if(action.equalsIgnoreCase("Update"))
		{
			Student s=new Student();
			s.setId(Integer.parseInt(request.getParameter("id")));
			s.setFname(request.getParameter("fname"));
			s.setLname(request.getParameter("lname"));
			s.setEmail(request.getParameter("email"));
			s.setMobile(request.getParameter("mobile"));
			s.setAddress(request.getParameter("address"));
			s.setGender(request.getParameter("gender"));
			StudentDao.updateStudent(s);
			response.sendRedirect("Show.jsp");

			
		}
		else if(action.equalsIgnoreCase("DELETE"))
		{
		int id=Integer.parseInt(request.getParameter("id"));
		StudentDao.deleteStudent(id);
		response.sendRedirect("Show.jsp");

		}
	}

}
    
