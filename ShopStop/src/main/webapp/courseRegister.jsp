<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration details</title>
</head>
<body>
    <%
        String title=request.getParameter("title");
        String code=request.getParameter("code");
        String name=request.getParameter("studentNumber");
    %>

 

    <h1>Thank you for register your courses</h1>
    <h3>Course Details</h3>
    <table border=1>
        <tr>
            <th>Name</th>
            <th>Code</th>
            <th>Title</th>
        </tr>
        <tr>
            <td><%=name%></td>
            <td><%=code%></td>
            <td><%=title%></td>
        </tr>
    </table>

 

</body>
</html>