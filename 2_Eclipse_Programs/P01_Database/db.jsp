<%@ page import="java.sql.*" %>
<%
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
Statement s = con.createStatement();
s.executeUpdate("insert into stu values(1, 'Ram')");
ResultSet r = s.executeQuery("select * from stu");
while (r.next()) out.println(r.getString(1) + " " + r.getString(2) + "<br>");
%>
