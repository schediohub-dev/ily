<%
request.setAttribute("name", request.getParameter("name").toUpperCase());
request.setAttribute("email", request.getParameter("email").toLowerCase());
request.getRequestDispatcher("result.jsp").forward(request, response);
%>
