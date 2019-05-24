<%-- 
    Document   : UpdateBBProcess
    Created on : 10-May-2019, 19:11:57
    Author     : Chathurika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/librarydb";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String sID = request.getParameter("sID");
String ISBM_no=request.getParameter("ISBM_no");
String issueDate=request.getParameter("issueDate");
String returnDate=request.getParameter("returnDate");

if(sID != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(sID);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update issueresource set sID=?,ISBM_no=?,issueDate=?,returnDate=? where sID="+sID;
ps = con.prepareStatement(sql);
ps.setString(1,sID);
ps.setString(2, ISBM_no);
ps.setString(3,issueDate);
ps.setString(4, returnDate);
response.sendRedirect("ViewBorrowedBooks.jsp");

int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
} 
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>
    </body>
</html>

