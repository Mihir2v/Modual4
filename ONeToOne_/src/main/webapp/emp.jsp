<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="js/validation.js">
</script>
<link href="css/style.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>
<body>

<%
	if(request.getAttribute("msg")!=null)
	{	
		out.println(request.getAttribute("msg"));
	}
%>

<form name="frm" method="post" action="EmployeeController">
	<table>
		<tr>
			<td>First Name</td>
			<td><input type="text" name="fname" ></td>
			<td><span id="fname"></span></td>
		</tr>
		<tr>
			<td>Last Name</td>
			<td><input type="text" name="lname"></td>
		</tr>
		<tr>
			<td>Email</td>
			<td><input type="text" name="email" ></td>
			
		</tr>
		<tr>
			<td>User Name</td>
			<td><input type="text" name="uname" ></td>
	
		</tr>
		<tr>
			<td>Password</td>
			<td><input type="password" name="password" ></td>
		
		</tr>
		<tr>
	
			<td colspan="2" align="Center">
				<input type="submit" name="action" value="INSERT" >
			</td>
		</tr>
	</table>
</form>
<a href="show.jsp">Show All Student</a>
</body>
</html>