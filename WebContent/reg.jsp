<%@ page import="java.sql.*" %>
<%
String fname = request.getParameter("fname");
String lname = request.getParameter("lname");
String gender = request.getParameter("gender");
String uname = request.getParameter("uname");
String pwd = request.getParameter("pwd");
String mobile = request.getParameter("mob");
String email = request.getParameter("email");
String address = request.getParameter("address");
int id = (int)(Math.random() * 99999 + 1);
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
System.out.println("Driver Classes Loaded");
Connection con = null;
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ep","ep");
System.out.println("Connection Established");
PreparedStatement ps = con.prepareStatement("select * from member where uname=? or email=? or mob=?");
ps.setString(1, uname);
ps.setString(2, email);
ps.setString(3, mobile);
ResultSet rs = ps.executeQuery();
if(rs.next())
{
%>
<h3>Email Id / Username / Mobile.no. already available</h3><br>
<a href="signup.html">Try Again</a>
<%
}
else
{
PreparedStatement pstmt = con.prepareStatement("insert into member values(?,?,?,?,?,?,?,?,?)");
pstmt.setInt(1, id);
pstmt.setString(2, fname);
pstmt.setString(3, lname);
pstmt.setString(4, gender);
pstmt.setString(5, uname);
pstmt.setString(6, pwd);
pstmt.setString(7, email);
pstmt.setString(8, mobile);
pstmt.setString(9, address);
int i = pstmt.executeUpdate();
if(i>0)
{
%>
<h3>User Registration Successful</h3><br>
<a href="index.html">Go to Login</a>
<%
}
else
{
%>
<h3>User Registration UnSuccessful</h3><br>
<a href="signup.html">Try to Register Again</a>
<%
}
}
}
catch(Exception e)
{
out.println(e);
}
%>