<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <%   
             Class.forName("com.mysql.jdbc.Driver");
             
             Connection con=null;
             if(application.getAttribute("con")==null){
                 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fps", "root","");
                 application.setAttribute("con", con);
             }
             else{
                 con=(Connection)application.getAttribute("con");
             }
                 
       %>
</body>

</html>