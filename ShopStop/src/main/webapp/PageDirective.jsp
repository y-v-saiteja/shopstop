<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
     import="java.time.LocalDateTime"
     info="created by tej"
     buffer="16kb"
     errorPage="myerrorPage.jsp"
     isErrorPage="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Page DIrective demo</title>
</head>
<body>
      <h1>page Directive attributes Demo </h1>
      
      <p> Today is : <%=LocalDateTime.now() %>
      <p><%= 10/5 %> </p>
      <p> <%= getServletInfo() %> </p>
</body>
</html>