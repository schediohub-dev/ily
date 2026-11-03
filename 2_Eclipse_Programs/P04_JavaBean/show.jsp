<jsp:useBean id="p" class="bean.Person" />
<jsp:setProperty name="p" property="*" />
Name: <jsp:getProperty name="p" property="name" /><br>
Age: <jsp:getProperty name="p" property="age" />
