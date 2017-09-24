<%-- 
    Document   : GetData
    Created on : 2 Aug, 2017, 7:25:25 PM
    Author     : DEEPAK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
       String data;
       String fname = request.getParameter("fname");
       //String fname="ram";
       try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ovs","root","");
                Statement stmt = con.createStatement();
                String str = "select * from condidate where fname='"+fname+"'";
                ResultSet rs = stmt.executeQuery(str);
                if(rs.next())
                {
                   data = rs.getString(2)+":"+rs.getString(3)+":"+rs.getString(4)+":"+rs.getString(5)+":"+rs.getString(6)+":photo\\Condidate\\"+rs.getString(7)+":photo\\Election Symbol\\"+rs.getString(8)+":"+rs.getString(9)+":"+rs.getString(10);
                   out.println(data); 
                   //out.println("<br/>"+rs.getString(7));
              %>
       
             <!-- <img src="<%=rs.getString(7)%>"/> -->
        <%
                }
            }
            catch(Exception e)
            {
               out.println(e);
            }
       %>
    </body>
</html>
