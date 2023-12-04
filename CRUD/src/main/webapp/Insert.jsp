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
<b style="color:blue;">
<%
	if(request.getAttribute("msg")!=null)
	{
		out.println(request.getAttribute("msg"));
	}
%>
</b>
<form name="form" method="post" action="StudentController">
	<table cellpadding="5px" cellspacing="5px">
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
			<td><span id="email"></span></td>
		</tr>
		<tr>
			<td>Mobile</td>
			<td><input type="text" name="mobile" ></td>
			<td><span id="mobile"></span></td>
		</tr>
		<tr>
			<td>Address</td>
			<td><textarea rows="5" cols="21" name="address"></textarea></td>
		</tr>
		<tr>
			<td>Gender</td>
			<td>
			<input type="radio" name="gender" value="man">Man
			<input type="radio" name="gender" value="woman">woman
			</td>
		
		<tr>
			<td colspan="2" align="center">
			<input type="submit" name="action" value="Insert" class="btn btn-primary">
			</td>
		
		</tr>
				
				
				
		
	</table>
</form>
<a href="Show.jsp">Show All Data</a>
</body>
</html>