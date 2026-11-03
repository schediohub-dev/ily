<form method="post">
Name <input name="name"><br>
Password <input type="password" name="pass"><br>
<input type="submit">
</form>
<%
if (request.getParameter("name") != null) {
    out.println("Name: " + request.getParameter("name") + "<br>");
    out.println("Password: " + request.getParameter("pass"));
}
%>
