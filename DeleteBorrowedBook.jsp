<%-- 
    Document   : DeleteBorrowedBook
    Created on : 10-May-2019, 15:55:51
    Author     : Chathurika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*,java.util.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
<%
String sID=request.getParameter("sID");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/librarydb", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM issueresource WHERE sID="+sID);
out.println("Data Deleted Successfully!");
response.sendRedirect("ViewBorrowedBooks.jsp");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
    </body>
</html>

