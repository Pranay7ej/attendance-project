<%
String uname = (String)session.getAttribute("uname");
String pwd = (String)session.getAttribute("pwd");
if(uname==null || pwd==null)
{
response.sendRedirect("memberlogout.jsp");
}
%>
<!DOCTYPE html>
<html>
<head>
<title>Attendance Management System</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="login.css">
<link rel="stylesheet" href="slideshow1.css">
</head>
<body>
<div class="hero-image">
<div class="hero-text">
<a href="test2.html" ><h1 style="font-size:40px" >ATTENDENCE MANAGEMENT SYSTEM</h1></a>
</div>
</div>
<div class="nav">
<a class="tablink" onclick="openPage('Home', this, '#B82606')"
id="defaultOpen">Home</a>
<a class="tablink" onclick="openPage('CP', this, '#F5E5B5')">Change Password</a>
<a class="tablink" onclick="openPage('VE', this, '#B82606')">View Events</a>
<a class="tablink" onclick="openPage('RE', this, '#F5E5B5')">Registered Events</a>
<a class="tablink" onclick="openPage('view', this, '#F5E5B5')" >View Attendance</a>
<div class="dropdown" style="float:right">
<a href="managerlogout.jsp" class="dropbtn">Logout</a>
</div>
</div>
</div>
<div id="Home" class="tabcontent">
<div class="slideshow-container">
<div class="mySlides fade">
<div class="numbertext">1 / 3</div>
<img src="slideshow/samyak.jpg" style="width:100%">
<div class="text">Caption Text</div>
</div>
<div class="mySlides fade">
<div class="numbertext">2 / 3</div>
<img src="slideshow/ignite.jpg" style="width:100%">
<div class="text">Caption Two</div>
</div>
<div class="mySlides fade">
<div class="numbertext">3 / 3</div>
<img src="slideshow/zortriya.jpg" style="width:100%">
<div class="text">Caption Three</div>
</div>
<br>
<div style="text-align:center">
<span class="dot"></span>
<span class="dot"></span>
<span class="dot"></span>
</div>
</div>
<div id="News" class="tabcontent">
</div>
<div id="Contact" class="tabcontent">
<h3>Contact</h3>
<p>Contact Details and a contact form</p>
</div>
<div id="About" class="tabcontent">
<h3>About</h3>
<p>Who we are and what we do.</p>
</div>
<script src="script.js">
</script>
</body>
</html>