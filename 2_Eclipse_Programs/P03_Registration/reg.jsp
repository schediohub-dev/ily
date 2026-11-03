<%@ page import="java.sql.*" %>
<form>
Name <input name="n"><br>
Password <input name="p"><br>
Email <input name="e"><br>
Country <input name="c"><br>
<input type="submit">
</form>
<%
if (request.getParameter("n") != null) {
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
    Statement s = con.createStatement();
    s.executeUpdate("insert into users values('" + request.getParameter("n") + "','" + request.getParameter("p")
        + "','" + request.getParameter("e") + "','" + request.getParameter("c") + "')");
    ResultSet r = s.executeQuery("select * from users");
    while (r.next()) out.println(r.getString(1) + " " + r.getString(3) + " " + r.getString(4) + "<br>");
}
%>
