<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1 style="text-align: center">Mail has been sended
		Successfully...!</h1>

	<%
		String taskDTOTaskName = request.getAttribute("taskName").toString();
		String taskDTODeveloperName = request.getAttribute("developerName").toString();
		String taskDTOEmail = request.getAttribute("email").toString();
		String taskDTODescription = request.getAttribute("description").toString();
		String taskDTOStatus = request.getAttribute("status").toString();
		String taskDTOTimeLine = request.getAttribute("timeLine").toString();
	%>
	<table border="1"
		style="width: 80%; margin-left: auto; margin-right: auto;">
		<tr>
			<td><b>TaskName</b></td>
			<td><%=taskDTOTaskName%></td>
		</tr>
		<tr>
			<td><b>DeveloperName</b></td>
			<td><%=taskDTODeveloperName%></td>
		</tr>
		<tr>
			<td><b>Email</b></td>
			<td><%=taskDTOEmail%></td>
		</tr>
		<tr>
			<td><b>Description</b></td>
			<td><%=taskDTODescription%></td>
		</tr>
		<tr>
			<td><b>Status</b></td>
			<td><%=taskDTOStatus%></td>
		</tr>
		<tr>
			<td><b>TimeLine</b></td>
			<td><%=taskDTOTimeLine%></td>
		</tr>
	</table>
</body>
</html>