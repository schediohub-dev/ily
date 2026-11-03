<%@ page import="java.sql.*" %>
<h2>Register</h2>
<form>
Username <input name="u"><br>
Password <input type="password" name="p"><br>
<input type="submit">
</form>
<%
if (request.getParameter("u") != null) {
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
    con.createStatement().executeUpdate("insert into members values('" + request.getParameter("u") + "','" + request.getParameter("p") + "')");
    out.println("Registered! <a href='login.jsp'>Login</a>");
}
%>
