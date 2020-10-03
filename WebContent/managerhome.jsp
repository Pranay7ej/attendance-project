<%
String uname = (String)session.getAttribute("uname");
String pwd = (String)session.getAttribute("pwd");
if(uname==null || pwd==null)
{
response.sendRedirect("managerlogout.jsp");
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
<a href="test2.html" ><h1 style="font-size:40px">ATTENDENCE MANAGEMENT SYSTEM</h1></a>
</div>
</div>
<div class="nav">
<a class="tablink" onclick="openPage('Home', this, '#B82606')"
id="defaultOpen">Home</a>
<a class="tablink" href="managerchangepwd.jsp">Change Password</a>
<a class="tablink" onclick="openPage('CnE', this, '#F5E5B5')">Create new Event</a>
<a class="tablink" href="viewevent.jsp">View All Events</a>
<a class="tablink" href="markattend.jsp" >Mark Attendance</a>
<a class="tablink" href="viewattend.jsp" >View Attendance</a>
<div class="dropdown" style="float:right">
<a href="managerlogout.jsp" class="dropbtn">Logout</a>
</div>
</div>
<div id="Home" class="tabcontent">
<div class="slideshow-container">
<div class="mySlides fade">
<div class="numbertext">1 / 3</div>
<img src="slideshow/samyak.jpg" style="width:100%">
</div>
<div class="mySlides fade">
<div class="numbertext">2 / 3</div>
<img src="slideshow/ignite.jpg" style="width:100%">
</div>
<div class="mySlides fade">
<div class="numbertext">3 / 3</div>
<img src="slideshow/zortriya.jpg" style="width:100%">
</div>
<br>
<div style="text-align:center">
<span class="dot"></span>
<span class="dot"></span>
<span class="dot"></span>
</div>
</div>
</div>
<div id="CnE" class="tabcontent">
<form action="eventreg.jsp">
<div class="container">
<h1>Event Registeration</h1>
<hr>
<label for="ename"><b>Event Name</b></label>
<input type="text" placeholder="Enter Event Name" name="ename" required><br>
<label for="ecat"><b>Event Category</b></label>
<input type="text" placeholder="Enter Event category" name="ecat" required><br>
<label for="evenue"><b>Enter Event Venue</b></label>
<input type="text" placeholder="Enter the Event Venue" name="evenue" required><br>
<label for="estart"><b>Enter Event Start Date</b></label>
<input type="text" placeholder="Enter Event Start Date" name="estart" required><br>
<label for="eend"><b>Enter Event Start Date</b></label>
<input type="text" placeholder="Enter Event End Date" name="eend" required><br>
<label for="edur"><b>Enter Event Start Date</b></label>
<input type="text" placeholder="Enter Event Duration" name="edur" required><br>
<label for="edesc"><b>Enter Event Description</b></label>
<textarea id="edesc" name="edesc" placeholder="Enter Event Description"
style="height:150px"></textarea>
<hr>
<button type="submit" class="registerbtn">Register</button>
</div>
</form>
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