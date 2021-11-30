<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expressions in jsp</title>
</head>
<body>
       <h1> Expressions Demo</h1>
       
       <h2><%="welcome to jsp" %></h2>
       <h2><%=2+4/10 %></h2>
       <%
          int a=10,b=20,c=30;
           out.println(a+b+c);
       %>
       <h2> the addition of three numbers is: <%= a+b+c %></h2>
       <h3> the current time is : <%=java.time.LocalTime.now() %></h3>
       
       <!-- declaration tag in jsp -->
       
       <%!
       public long fact (long x)
       {
       if (x == 0) return 1;
       else return x * fact(x-1);
       }
       %>
       
       <h3> the factorial of a number is:<%=fact(10) %></h3>
       
       <!-- display numbers from 1-10 -->
       <%
           for(int i=1;i<=10;i++)
           {
        	   out.print(i+"  :-tej<br>");
           }
       %>
       <h1>Mathematical functions</h1>
        <b>Value of PI : </b><%=Math.PI %><br />
        <b>Exponential Value of 10 : </b><%=Math.exp(10) %><br />
        <b>floor 3.14 : </b><%=Math.floor(3.14) %><br />
        <b>ceil 3.14 : </b><%=Math.ceil(3.14) %><br />
        <b>log 10 : </b><%=Math.log(10) %><br />
        <b>max 10,11 : </b><%=Math.max(10,11) %><br />
        <b>min 10,11 : </b><%=Math.min(10,11) %><br />
</body>
</html>