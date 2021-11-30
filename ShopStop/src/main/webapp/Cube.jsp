<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>cube of numbers</title>
</head>
<body>
    <h1> java bean demo</h1>
    <h2> cube of a number</h2>
    
    <jsp:useBean id="cb1" scope="session" class=com.coforgetraining.CubeBean></jsp:useBean>
    
    <jsp:setProperty property="num" name="cb1" value="5"/>
    
    <h3> cube of a number is: 
    <jsp:getProperty property="num" name="cb1"/>
    </h3>
    
       
</body>
</html>	