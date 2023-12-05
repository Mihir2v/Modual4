<%@page import="com.dao.EmployeeDao"%>
<%@page import="com.bean.Employee"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>
<body>
<b style="color: blue;">
	<%
		if(request.getAttribute("msg")!=null)
		{
			out.println(request.getAttribute("msg"));
		}
	%>
</b>
<table border="5" width="100%" cellpadding="10px" cellspacing="10px">
	<tr>
		<th>EINFO</th>
		<th>FIRST NAME</th>
		<th>LAST NAME</th>
		<th>EMAIL</th>
		<th>EID</th>
		<th>User Name</th>
		<th>Password</th>
		<th>EDIT</th>
		<th>DELETE</th>
	</tr>
	<%
		List<Employee> list=EmployeeDao.getAllEmployee();
		for(Employee e:list)
		{
	%>
	<tr>
		<td><%=e.getEinfo().getEinfo() %></td>
		<td><%=e.getEinfo().getFname() %></td>
		<td><%=e.getEinfo().getLname() %></td>
		<td><%=e.getEinfo().getEmail() %></td>
		<td><%=e.getEid() %></td>
		<td><%=e.getUname() %></td>
		<td><%=e.getPassword() %></td>
		<td>
			<form name="edit" method="post" action="EmployeeController">
				<input type="hidden" name="eid" value="<%=e.getEid()%>">
				<input type="submit" name="action" value="EDIT" class="btn btn-primary">
			</form>
		</td>
		<td>
			<form name="delete" method="post" action="EmployeeController">
				<input type="hidden" name="eid" value="<%=e.getEid()%>">
				<input type="submit" name="action" value="DELETE" class="btn btn-danger">
			</form>
		</td>
	</tr>
	<%		
		}
	%>
</table>

<a href="index.jsp">Add New User</a>
</body>
</html>