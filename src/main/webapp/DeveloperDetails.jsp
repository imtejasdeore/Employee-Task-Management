<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1 style="text-align: center">Developer Details Has Been Saved
		Successfully...!</h1>

	<%
	Object developerDeveloperId = request.getAttribute("developerId");
	Object developerDeveloperName = request.getAttribute("developerName");
	Object developerDeveloperCode = request.getAttribute("developerCode");
	Object developerDOB = request.getAttribute("dob");
	Object developerPhoneNumber = request.getAttribute("phoneNumber");
	Object developerEmailId = request.getAttribute("emailId");
	%>

	<table border="1"
		style="width: 80%; margin-left: auto; margin-right: auto;">
		<tr>
			<td><b>Developer ID</b></td>
			<td><%=developerDeveloperId%></td>
		</tr>
		<tr>
			<td><b>Developer Name</b></td>
			<td><%=developerDeveloperName%></td>
		</tr>
		<%-- <tr>
			<td><b>Developer Code</b></td>
			<td><%=developerDeveloperCode%></td>
		</tr> --%>
		<tr>
			<td><b>DOB</b></td>
			<td><%=developerDOB%></td>
		</tr>
		<tr>
			<td><b>Phone Number</b></td>
			<td><%=developerPhoneNumber%></td>
		</tr>
		<tr>
			<td><b>Email ID</b></td>
			<td><%=developerEmailId%></td>
		</tr>
	</table>
</body>
</html>