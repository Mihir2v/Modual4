<%@page import="com.dao.StudentDao"%>
<%@page import="com.bean.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</head>
<body>
<%
	List<Student> List=StudentDao.getAllStudent();
%>
<table border="5" width="100%" cellpadding="10px" cellspacing="10px">
	<tr>
		<th>ID</th>
		<th>FIRST NAME</th>
		<th>LAST NAME</th>
		<th>EMAIL</th>
		<th>MOBILE</th>
		<th>ADDRESS</th>
		<th>GENDER</th>
		<th>EDIT</th>
		<td>DELETE</td>
	</tr>
	<%
		for(Student s:List)
		{
	%>
	<tr>
		<td><%=s.getId()%></td>
		<td><%=s.getFname() %></td>
		<td><%=s.getLname() %></td>
		<td><%=s.getEmail() %></td>
		<td><%=s.getMobile() %>
		<td><%=s.getAddress() %></td>
		<td><%=s.getGender() %></td>
		<td>
			<form name="edit" method="post" action="StudentController">
			<input type="hidden" name="id" value="<%=s.getId()%>">
			<input type="submit" name="action" value="EDIT" class="btn btn-primary">
			</form>
		</td>
			<td>
			<form name="delete" method="post" action="StudentController">
			<input type="hidden" name="id" value="<%=s.getId()%>">
			<input type="submit" name="action" value="DELETE" class="btn btn-danger">
			</form>
		</td>
	</tr>
	<% 
		}
	%>
</table>
<a href="Insert.jsp">Add new student</a>
</body>
</html>