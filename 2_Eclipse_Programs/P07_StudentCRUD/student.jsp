<%@ page import="java.sql.*" %>
<form>
ID <input name="id"><br>
Name <input name="name"><br>
Phone <input name="phone"><br>
<input type="submit" name="op" value="add">
<input type="submit" name="op" value="update">
<input type="submit" name="op" value="delete">
<input type="submit" name="op" value="view">
</form>
<%
String op = request.getParameter("op");
String id = request.getParameter("id"), name = request.getParameter("name"), phone = request.getParameter("phone");
if (op != null) {
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
    Statement s = con.createStatement();
    if (op.equals("add")) s.executeUpdate("insert into student values(" + id + ",'" + name + "','" + phone + "')");
    if (op.equals("update")) s.executeUpdate("update student set name='" + name + "', phone='" + phone + "' where id=" + id);
    if (op.equals("delete")) s.executeUpdate("delete from student where id=" + id);
    ResultSet r = s.executeQuery("select * from student");
    while (r.next()) out.println(r.getString(1) + " " + r.getString(2) + " " + r.getString(3) + "<br>");
}
%>
