<%@ page import="java.sql.*" %>
<form>
Emp ID <input name="id"><br>
Name <input name="name"><br>
Dept <input name="dept"><br>
Mobile <input name="mobile"><br>
Salary <input name="salary"><br>
<input type="submit">
</form>
<%
if (request.getParameter("id") != null) {
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
    Statement s = con.createStatement();
    s.executeUpdate("insert into emp values(" + request.getParameter("id") + ",'" + request.getParameter("name") + "','"
        + request.getParameter("dept") + "','" + request.getParameter("mobile") + "'," + request.getParameter("salary") + ")");
    ResultSet r = s.executeQuery("select * from emp");
    out.println("<table border=1><tr><th>ID</th><th>Name</th><th>Dept</th><th>Mobile</th><th>Salary</th></tr>");
    while (r.next())
        out.println("<tr><td>" + r.getString(1) + "</td><td>" + r.getString(2) + "</td><td>" + r.getString(3)
            + "</td><td>" + r.getString(4) + "</td><td>" + r.getString(5) + "</td></tr>");
    out.println("</table>");
}
%>
