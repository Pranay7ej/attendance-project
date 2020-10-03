<%@page import="java.sql.*"%>
<%
try {
Class.forName("oracle.jdbc.driver.OracleDriver");
System.out.println("Driver Classes Loaded");
Connection con = null;
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ep","ep");
System.out.println("Connection Established");
PreparedStatement pstmt1 = con.prepareStatement("select * from memattend ");
ResultSet rs = pstmt1.executeQuery();
%>
<!DOCTYPE html>
<html>
<body>
<h1>Retrieve data from database in jsp</h1>
<table border="1">
<tr>
<td>m_id</td>
<td>status</td>
<td>Edate</td>
</tr>
<%
while(rs.next()){
%>
<tr>
<td><%= rs.getString("m_id") %></td>
<td><%= rs.getString("status") %></td>
<td><%= rs.getString("edate") %></td>
</tr>
<%
}
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>
