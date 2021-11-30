<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>jsp declerrations</title>
<%!
   double radius=6.0;
   private double getRadius(){
       return radius;
   }
   private double getDiameter(){
       return (radius * 2);
   }
   private double getArea(){
       return (3.1415 * radius*radius);
   }
   private double getCircumference(){
       return(3.1415 *(radius * 2));
   }
%>
</head>
<body>
       <h1>JSP Declarations</h1>
     <p>A declaration declares one or more variables or methods 
       that you can use in Java code later in the JSP file. 
      </p>

<h3>Calculating area and circumference of a Circle</h3>
    <hr/>
    <b>Radius of circle:</b> <%=radius%> cm<br/>
    <b>Diameter:</b> <%=getDiameter()%> cm<br/>
    <b>Area of Circle is:</b> <%=getArea()%> 
    cm<sup>2</sup><br/>
    <b>Circumference of a circle is:</b>    
    <%=getCircumference()%><br/>
    <hr/>
    <jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>