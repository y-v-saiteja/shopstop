<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>my first jsp</title>
</head>
<body>
<h1> hello from jsp</h1>
<hr>
       <!-- scriplet  used to generate dynamic content -->
     <%
          out.print("hello from java scriptlet <br>");
          out.print("your ip adress is :"+request.getRemoteAddr());
            %>
            <p><strong>Todays date is: <%=new java.util.Date().toLocaleString() %>
            </strong> </p>
           <jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>