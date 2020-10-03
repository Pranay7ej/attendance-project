<%
String uname = (String)session.getAttribute("uname");
String pwd = (String)session.getAttribute("pwd");
if(uname==null || pwd==null)
{
response.sendRedirect("leaderlogout.jsp");
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
<a href="test2.html" ><h1 style="font-size:40px" >ATTENDENCE MANAGEMENT
SYSTEM</h1></a>
</div>
</div>
<div class="nav">
<a class="tablink" onclick="openPage('Home', this, '#B82606')"
id="defaultOpen">Home</a>
<a class="tablink" onclick="openPage('CP', this, '#F5E5B5')">Change Password</a>
<a class="tablink" onclick="openPage('CnE', this, '#F5E5B5')">Create new Event</a>
<a class="tablink" onclick="openPage('VAE', this, '#B82606')">View All Events</a>
<a class="tablink" onclick="openPage('mark', this, '#F5E5B5')" >MarkAttendance</a>
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
<img src="https://encryptedtbn0.gstatic.com/images?q=tbn%3AANd9GcSZVV9_FEh8TzCoInRgRqHjH06o5ZqpN9NPPj
r_O-4CbVM38qeO" style="width:100%">
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