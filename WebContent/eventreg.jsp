<%@ page import="java.sql.*" %>
<%
String ename= request.getParameter("ename");
String ecat = request.getParameter("ecat");
String evenue = request.getParameter("evenue");
String estart = request.getParameter("estart");
String eend = request.getParameter("eend");
String edur=request.getParameter("edur");
String edesc=request.getParameter("edesc");
int eid = (int)(Math.random() * 99999 + 1);
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
System.out.println("Driver Classes Loaded");
Connection con = null;
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ep","ep");
System.out.println("Connection Established");
PreparedStatement pstmt = con.prepareStatement("insert into event values(?,?,?,?,?,?,?,?)");
pstmt.setInt(1, eid);
pstmt.setString(2, ecat);
pstmt.setString(3, ename);
pstmt.setString(4, edesc);
pstmt.setString(5, evenue);
pstmt.setString(6, estart);
pstmt.setString(7, eend);
pstmt.setString(8, edur);
int i = pstmt.executeUpdate();
if(i>0)
{
%>
<html>
<head>
<title>Attendance Management System</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fontawesome/4.7.0/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.header img {
float: left;
width: 300px;
height: 100px;
background: #555;
}
.header h1 {
position: relative;
top: 18px;
left: 10px;
}
.header h2 {
position: relative;
top: 18px;
left: 10px;
}
body {font-family: Arial, Helvetica, sans-serif;}
navbar {
width: 100%;
background-color: #555;
overflow: auto;
}
.navbar a {
float: left;
padding: 12px;
color: white;
text-decoration: none;
font-size: 17px;
}
.navbar a:hover {
background-color: #FF0000;
}
.active {
background-color: #4CAF50;
}
@media screen and (max-width: 500px) {
.navbar a {
float: none;
display: block;
}
}
.active {
background-color: #4CAF50;
}
.footer {
position: fixed;
left: 0;
bottom: 0;
width: 100%;
background-color: red;
color: white;
text-align: center;
}
</style>
</head>
<body>
<div class="header">
<a href="Main.html"><img src="user/klulogo3.png" alt="logo" /></a>
<h1>KLEF</h1>
<h2>ATTENDANCE MANAGEMENT SYSTEM</h2>
</div>
<body bgcolor="yellow">
<div class="navbar">
<a class="active" href="Studentlogin.html">Go To Login</a>
<a href="studentlogout.jsp">Logout</a>
</div>
<h3 align=center>User Registration Successful</h3><br>
</div>
</body>
</html>
<html>
<head>
<%
}
else
{
%>

<title>Attendance Management System</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fontawesome/4.7.0/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.header img {
float: left;
width: 300px;
height: 100px;
background: #555;
}
.header h1 {
position: relative;
top: 18px;
left: 10px;
}
.header h2 {
position: relative;
top: 18px;
left: 10px;
}
body {font-family: Arial, Helvetica, sans-serif;}
.navbar {
width: 100%;
background-color: #555;
overflow: auto;
}
.navbar a {
float: left;
padding: 12px;
color: white;
text-decoration: none;
font-size: 17px;
}
.navbar a:hover {
background-color: #FF0000;
}
.active {
background-color: #4CAF50;
}
@media screen and (max-width: 500px) {
.navbar a {
float: none;
display: block;
}
}
.active {
background-color: #4CAF50;
}
.footer {
position: fixed;
left: 0;
bottom: 0;
width: 100%;
background-color: red;
color: white;
text-align: center;
}
</style>
</head>
<body>
<div class="header">
<a href="Main.html"><img src="user/klulogo3.png" alt="logo" /></a>
<h1>KLEF</h1>
<h2>ATTENDANCE MANAGEMENT SYSTEM</h2>
</div>
<body bgcolor="yellow">
<div class="navbar">
<a class="active" href="eventreg.html">Unsuccessful Registration</a>
<a href="studentlogout.jsp">Logout</a>
</div>
<h3 align="center">User Registration UnSuccessful</h3><br>
</div>
</body>
</html>
<%
}
}
catch(Exception e)
{
%>
<head>
<html>
<title>Attendance Management System</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fontawesome/4.7.0/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.header img {
float: left;
width: 300px;
height: 100px;
background: #555;
}
.header h1 {
position: relative;
top: 18px;
left: 10px;
}
.header h2 {
position: relative;
top: 18px;
left: 10px;
}
body {font-family: Arial, Helvetica, sans-serif;}
.navbar {
width: 100%;
background-color: #555;
overflow: auto;
}
.navbar a {
float: left;
padding: 12px;
color: white;
text-decoration: none;
font-size: 17px;
}
.navbar a:hover {
background-color: #FF0000;
}
.active {
background-color: #4CAF50;
}
@media screen and (max-width: 500px) {
.navbar a {
float: none;
display: block;
}
}
.active {
background-color: #4CAF50;
}
.footer {
position: fixed;
left: 0;
bottom: 0;
width: 100%;
background-color: red;
color: white;
text-align: center;
}
</style>
</head>
<body>
<div class="header">
<a href="Main.html"><img src="user/klulogo3.png" alt="logo" /></a>
<h1>KLEF</h1>
<h2>ATTENDANCE MANAGEMENT SYSTEM</h2>
</div>
<body bgcolor="yellow">
<div class="navbar">
<a class="active" href="eventreg.html">Unsuccessful Registration</a>
<a href="studentlogout.jsp">Logout</a>
</div>
<h3 align="center">User Registration UnSuccessful</h3><br>
</div>
</body>
</html>
<%
out.println(e);
}
%>