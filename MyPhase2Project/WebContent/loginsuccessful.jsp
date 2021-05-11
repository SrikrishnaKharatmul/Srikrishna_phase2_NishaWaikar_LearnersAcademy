<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<link href="CSS/Style.css" rel="stylesheet" type="text/css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@900&display=swap" rel="stylesheet"> 
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet"> 
   
<title>Welcome Admin</title>

<style type="text/css">
#box1
{
	height:100vh;
	font-family:"Montserrat",Sans-serif;
	font-weight:600px;
	font-size:24px;
	background-color:#a6363b;
	color:white;
	text-align:center;
	padding:200px 0px;
}
#box2
{
	padding:40px 40px;
	height:100vh;

}
.row
{
margin:0px;
}
a
{
display:block;
color:white;
text-decoration:none;
margin:10px 0px;
}
a:hover
{
display:block;
color:white;
text-decoration:none;
margin:8px 0px;
font-size:28px;
transition-duration: 0.6s;
transition-delay:0.5s ease;
color:#d9f1f1;
}
h1
{
text-align:center;
font-family:"Montserrat",Sans-serif;
}
#click{
	color:#000;
}
#logout
{
color:#fff;
font-size:20px;
position:absolute;
top:10px;
left:30px;
}
</style>
</head>
<body>
	<div class="row">
	<div id="box1" class="col-lg-3">
		<a id="logout" href="Login.jsp">Logout</a>
		<a href="HomePage.jsp">Class Report</a>
		<a href="AssignClasses.jsp">Assign Classes</a>
		<a href="AssignTeachers.jsp">Assign Teachers</a>
		<a href="Studentlist.jsp">Students List</a>
	</div>
	<div id="box2" class="col-lg-9">
		<h1>Class Report</h1>
		<hr>
		<table class="table table-dark table-striped">
			<thead>
				<tr>
					<th>Ids</th>
					<th>Classes</th>
					<th>Studentname</th>
					<th>Subject</th>
					<th>Teachername</th>
				</tr>
			</thead>
			<tbody>
				<p><a id="click" href="classes.jsp">Click Here</a>To Go Database Administration</p>
			</tbody>
			</table>
		</div>
	</div>
</body>
</html>