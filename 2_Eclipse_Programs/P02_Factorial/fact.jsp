<form>
Number <input name="n"> <input type="submit">
</form>
<%
if (request.getParameter("n") != null) {
    int n = Integer.parseInt(request.getParameter("n"));
    long f = 1;
    for (int i = 1; i <= n; i++) f = f * i;
    out.println("Factorial = " + f);
}
%>
