package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Employee;
import com.bean.EmployeeInfo;
import com.dao.EmployeeDao;

@WebServlet("/EmployeeController")
public class EmployeeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		
		if(action.equalsIgnoreCase("insert"))
		{
			EmployeeInfo einfo=new EmployeeInfo();
			einfo.setFname(request.getParameter("fname"));
			einfo.setLname(request.getParameter("lname"));
			einfo.setEmail(request.getParameter("email"));
			EmployeeDao.insertEmployeeInfo(einfo);
			
			Employee e= new Employee();
			e.setUname(request.getParameter("uname"));
			e.setPassword(request.getParameter("password"));
			e.setEinfo(einfo);
			EmployeeDao.insertEmployee(e);
			response.sendRedirect("show.jsp");
			
		}
		else if(action.equalsIgnoreCase("edit"))
		{
			int eid=Integer.parseInt(request.getParameter("eid"));
			Employee e=EmployeeDao.getEmployee(eid);
			request.setAttribute("e", e);
			request.getRequestDispatcher("update.jsp").forward(request, response);
		}
		else if(action.equalsIgnoreCase("update"))
		{
			EmployeeInfo einfo=new EmployeeInfo();
			einfo.setFname(request.getParameter("fname"));
			einfo.setLname(request.getParameter("lname"));
			einfo.setEmail(request.getParameter("email"));
			EmployeeDao.insertEmployeeInfo(einfo);
			
			Employee e= new Employee();
			e.setEid(Integer.parseInt(request.getParameter("eid")));
			e.setUname(request.getParameter("uname"));
			e.setPassword(request.getParameter("password"));
			e.setEinfo(einfo);
			EmployeeDao.insertEmployee(e);
			response.sendRedirect("show.jsp");
		}
		else if(action.equalsIgnoreCase("delete"))
		{
			int eid=Integer.parseInt(request.getParameter("eid"));
			EmployeeDao.deleteEmployee(eid);
//			request.setAttribute("e", eid);
			request.getRequestDispatcher("show.jsp").forward(request, response);
		}
	}

}
