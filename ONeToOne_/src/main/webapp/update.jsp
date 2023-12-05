<%@page import="com.bean.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<%
	Employee e=(Employee)request.getAttribute("e");
	if(request.getAttribute("msg")!=null)
	{
		out.println(request.getAttribute("msg"));
	}
%>
<form name="frm" method="post" action="EmployeeController">
	<table cellpadding="5px">
		<tr>
			<td><input type="hidden" name="eid" value="<%=e.getEid()%>"></td>
		</tr>
		<tr>
			<td>First Name</td>
			<td><input type="text" name="fname" value="<%=e.getEinfo().getFname()%>"></td>
			<td><span id="fname"></span></td>
		</tr>
		<tr>
			<td>Last Name</td>
			<td><input type="text" name="lname" value="<%=e.getEinfo().getLname()%>"></td>
		</tr>
		<tr>
			<td>Email</td>
			<td><input type="text" name="email" value="<%=e.getEinfo().getEmail()%>"></td>
		</tr>
		<tr>
			<td>User Name</td>
			<td><input type="text" name="uname" value="<%=e.getUname()%>"></td>
		</tr>
		<tr>
			<td>Password</td>
			<td><input type="password" name="password" value="<%=e.getPassword()%>"></td>
		</tr>
		
		
		
		
		<tr>
			<td colspan="2" align="center">
				<input type="submit" name="action" value="update">
			</td>
		</tr>
	</table>
</form>

</body>
</html>