<%@page import="com.java.bean.TaskDTO"%>
<%@page import="java.sql.DriverManager"%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
#child {
	height: 700px;
	width: 600px;
	border-radius: 20px;
	margin-left: 550px;
	margin-right: 500px;
	-webkit-box-shadow: 0px 1px 68px 7px rgba(0, 0, 0, 0.6);
	-moz-box-shadow : 0px 1px 68px 7px rgba( 0, 0, 0, 0.6); box-shadow :
	0px 1px 68px 7px rgba( 0, 0, 0, 0.6);
	border: 2px solid;
	-moz-box-shadow: 0px 1px 68px 7px rgba(0, 0, 0, 0.6);
	box-shadow: 0px 1px 68px 7px rgba(0, 0, 0, 0.6);
}

#parent {
	height: 760px;
	width: 100%; align ="center";
	background: linear-gradient(45deg, #DA1ED2, #86A8E7, #5FFB73);
	background-repeat: no-repeat;
}
</style>
<body>

	<div id="parent" style="">
		<br>
		<div align="center" id="child">
			<h1>::: TASKS :::</h1>

			<center>--------------------------------</center>

			<form action="<%=request.getContextPath()%>/taskprocess"
				method="post">

				<table style="with: 80%">
					<tr>
						<td style="width: 50%"><label for="taskName"
							style="font-size: 30px"><b>Task Name *</b></label><br /> <input
							name="taskName" type="text" maxlength="50" height="20px"
							width="50px" style="width: 100%; max-width: 300px" required /></td>
					</tr>
					<tr>
						<br>
						<br>
						<%
							Connection connection;
							PreparedStatement preparedStatement;
							ResultSet rs;

							try {

								Class.forName("com.mysql.cj.jdbc.Driver");
								connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/taskassign?", "root", "Tejas@00");
								preparedStatement = connection.prepareStatement("SELECT developer_name from devs;");
								rs = preparedStatement.executeQuery();
						%>
						<td style="width: 50%"><label for="developerName"
							style="font-size: 30px"><b>Developer Name *</b></label><br /> <select
							name="developerName" height="20px" width="50px" required
							style="width: 100%; max-width: 300px">
								<option value="">Select developer name</option>
								<%
									while (rs.next()) {
								%>
								<option value="<%=rs.getString("developer_name")%>"><%=rs.getString("developer_name")%>
								</option>

								<%
									}
								%>
						</select></td>
						<%
							} catch (Exception ee) {
							}
						%>
					</tr>
					<tr>
						<td style="width: 50%"><label for="email"
							style="font-size: 30px"><b>Email Id *</b></label><br /> <input
							name="email" type="email" maxlength="50"
							style="width: 100%; max-width: 300px"
							placeholder="xyz123@gmail.com"
							pattern="[a-zA-Z0-9.-_]{1,}@[a-zA-Z.-]{2,}[.]{1}[a-zA-Z]{2,}"
							required height="20px" width="50px" /></td>
					</tr>
					<tr>
						<td style="width: 50%"><label for="description"
							style="font-size: 30px"><b>Description *</b></label><br /> <input
							name="description" type="text" maxlength="500" height="20px"
							width="50px" style="width: 100%; height: 100px; max-width: 300px" /></td>

					</tr>
					<tr>
						<td style="width: 50%"><label for="status"
							style="font-size: 30px"><b>Status *</b></label><br /> <select
							name="status" style="width: 100%; max-width: 300px" height="20px"
							width="50px" required>
								<option value="">-Please choose an option</option>
								<option value="Started">Started</option>
								<option value="Work in progress">Work in progress</option>
								<option value="Done">Done</option>
						</select></td>
					</tr>
					<tr>
						<td style="width: 50%"><label for="timeLine"
							style="font-size: 30px"><b>Time Line *</b></label><br /> <input
							name="timeLine" type="text" maxlength="50" height="20px"
							width="50px" style="width: 100%; max-width: 300px" required /></td>
					</tr>
				</table>
				<br> <br> <input type="submit" value="Send"
					style="border-radius: 5px; font-weight: bold; width: 100px; height: 30px; font-size: 20px" />
			</form>
		</div>
	</div>
</body>
</html>