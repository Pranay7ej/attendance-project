<%@page import="java.sql.*"%>
<%
try {
Class.forName("oracle.jdbc.driver.OracleDriver");
System.out.println("Driver Classes Loaded");
Connection con = null;
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ep","ep");
System.out.println("Connection Established");
PreparedStatement pstmt1 = con.prepareStatement("select * from event");
ResultSet rs = pstmt1.executeQuery();
%>
<!DOCTYPE html>
<html>
<body>
<h1>Retrieve data from database in jsp</h1>
<table border="1">
<tr>
<td>e_id</td>
<td>e_cat</td>
<td>E_name</td>
<td>e_desc</td>
<td>e_venue</td>
<td>e_start</td>
<td>e_end</td>
<td>e_duration</td>
</tr>
<%
while(rs.next()){
%>
<tr>
<td><%= rs.getString("e_id") %></td>
<td><%= rs.getString("e_cat") %></td>
<td><%= rs.getString("e_name") %></td>
<td><%= rs.getString("e_desc") %></td>
<td><%= rs.getString("e_venue") %></td>
<td><%= rs.getString("e_start") %></td>
<td><%= rs.getString("e_end") %></td>
<td><%= rs.getString("e_duration") %></td>
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