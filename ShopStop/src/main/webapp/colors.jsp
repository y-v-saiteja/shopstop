<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Embedding javacode in jsp</title>

<%!
      String[] names={"aqua","red","greenyellow","orange","pink","yellow"};

%>
</head>
<body>
   <h1>list of colors</h1>
   
   <table>
         <th>Name</th>
         <%
            for( int i=0;i<names.length;i++)
            {
            	
            
         %> 
         <tr>
         <td bgcolor="<%= names[i] %>"width="200"> <%=names[i] %></td>
         </tr>
         <%
         }
         %>
         
   </table>
   <jsp:include page="Footer.jsp"></jsp:include>

</body>
</html>