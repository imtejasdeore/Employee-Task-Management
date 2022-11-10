<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<style>
#parent {
	height: 760px;
	width: 100%; align ="center";
	background: linear-gradient(45deg, #22b2c3, #c904fb);
	background-repeat: no-repeat;
}

#child {
	height: 250px;
	width: 400px;
	border-radius: 20px;
	margin-left: 550px;
	margin-right: 500px;
	border: 2px solid
}

#ip {
	background-color: #b5b5b5;
	border-top: none;
	border-left: none;
	border-bottom:;
	border-right: none;
	border-top: none;
}

.dob {
	background-color: #b5b5b5;
	border-top: none;
	border-left: none;
	border-bottom:;
	border-right: none;
	border-top: none;
}
</style>


</form>
<body>
	<div id="parent" style="">
		<div align="center" id="child">
			<h1>Developer Details Form</h1>
			<form action="<%=request.getContextPath()%>/register" method="post">

				<table style="with: 80%">
					<tr>
						<td>Developer Name:</td>
						<td><input type="text" name="developerName"
							placeholder="Enter Name" minlength="1" maxlength="30" id="ip"
							pattern="[a-zA-Z]*"
							title="Developer Name should only contain characters. e.g. John" required /></td>
					</tr>
					<tr>
						<td>Developer ID:</td>
						<td><input type="number" name="developerId" id="ip" required /></td>
					</tr>
					<!-- <tr>
					<td>Devloper Code:</td>
					<td><input type="text" name="developerCode" /></td>
				</tr> -->
					<tr>
						<td>DOB :</td>
						<td><input type="date" name="dob" min='1899-01-01' id="dt"
							class="dob" required /></td>
					</tr>
					<tr>
						<td>Phone Number:</td>
						<td><input type="tel" name="phoneNumber" id="ip" size="10"
							maxlength="10" pattern="[6-7-8-9]{1}[0-9]{9}"
							title="Please enter valid phone number" required /></td>
					</tr>
					<tr>
						<td>Email ID:</td>
						<td><input type="email" placeholder="xyz@gmail.com"
							name="emailId" id="ip" 
							pattern="[a-zA-Z0-9.-_]{1,}@[a-zA-Z.-]{2,}[.]{1}[a-zA-Z]{2,}" required /></td>

					</tr>
				</table>
				<input type="submit" value="Submit"
					style="border-radius: 5px; font-weight: bold;" />
			</form>
		</div>
	</div>
	<script>
		document.getElementById('dt').max = new Date(new Date().getTime()
				- new Date().getTimezoneOffset() * 60000).toISOString().split(
				"T")[0];
	</script>
</body>
</html>