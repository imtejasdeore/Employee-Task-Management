<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
.navbar {
	background-color: black;
	border-radius: 30px;
}

.navbar ul {
	overflow: auto;
}

.navbar li {
	float: left;
	list-style: none;
	margin: 13px 20px;
}

.navbar li a {
	padding: 3px 3px;
	text-decoration: none;
	color: white;
}

.navbar li a:hover {
	color: red
}

.search {
	float: right;
	color: white;
	padding: 12px 75px;
}

.navbar input {
	border: 2px solid black;
	border-radius: 14px;
	padding: 3px 17px;
	width: 129px;
}

#bg {
	height: 700px;
	background-size: cover;
	margin-left: 9px; width : 99%;
	border: 1px solid;
	background-repeat: no-repeat;
	background-attachment: fixed;
	border: 1px solid;
	width: 99%; border : 1px solid; background-repeat : no-repeat;
	background-attachment : fixed; border : 1px solid;
	background-image:
		url('https://c0.wallpaperflare.com/preview/550/455/764/adults-analysis-banking-brainstorming.jpg');
}
</style>

<body>
	<div>
		<header> <nav class="navbar">
		<ul>
			<li><a href="RegisterDeveloper.jsp">Add Developer</a></li>
			<li><a href="process.jsp">Task Assign</a></li>
			<li><a href="#">About</a></li>
			<li><a href="#">Services</a></li>
			<li><a href="#">Contact us</a></li>

		</ul>
		</nav> </header>
		<div id="bg"></div>
	</div>
</body>
</html>