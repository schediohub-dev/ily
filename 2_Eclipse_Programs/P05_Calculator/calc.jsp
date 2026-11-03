<form>
<input name="a"> <input name="b"><br>
<input type="submit" name="op" value="+">
<input type="submit" name="op" value="-">
<input type="submit" name="op" value="*">
<input type="submit" name="op" value="/">
</form>
<%
String op = request.getParameter("op");
if (op != null) {
    double a = Double.parseDouble(request.getParameter("a"));
    double b = Double.parseDouble(request.getParameter("b"));
    if (op.equals("+")) out.println("Result = " + (a + b));
    if (op.equals("-")) out.println("Result = " + (a - b));
    if (op.equals("*")) out.println("Result = " + (a * b));
    if (op.equals("/")) out.println("Result = " + (a / b));
}
%>
