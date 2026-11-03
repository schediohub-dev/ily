<%@ page import="java.sql.*" %>
<h2>Login</h2>
<form>
Username <input name="u"><br>
Password <input type="password" name="p"><br>
<input type="submit">
</form>
<%
if (request.getParameter("u") != null) {
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
    ResultSet r = con.createStatement().executeQuery("select * from members where username='"
        + request.getParameter("u") + "' and password='" + request.getParameter("p") + "'");
    if (r.next()) out.println("Welcome " + request.getParameter("u"));
    else out.println("Invalid login");
}
%>
