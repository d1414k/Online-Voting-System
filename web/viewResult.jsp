<%-- 
    Document   : viewResult
    Created on : 9 Jul, 2017, 7:55:05 PM
    Author     : DEEPAK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="lightgray">
        <table border="1" align="center" cellspacing="0">
            <caption align="top"><h3>Election Result</h3></caption>
            <tr>
                <th>Condidate Name</th>
                <th>No Of Votes</th>
            </tr>
            
                <%
                    int max=0;
                    try
                        {
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ovs","root","");
                            Statement stmt = con.createStatement();
                            String str = "select * from vote";
                            ResultSet rs = stmt.executeQuery(str);
                            while(rs.next())
                                {
                                    if(max<rs.getInt(3))
                                    {
                                        max = rs.getInt(3);
                                    }
                %>
                                <tr>
                                    <td><%=rs.getString(2)%></td>
                                    <td><%=rs.getString(3)%></td>
                                </tr>
        
                                
                                <%}%>
        </table>  
                        <table align="center">
                                <tr>
                                    <td><h2>Winner is :</h2></td>
                           <% String str1 = "select * from vote where votes="+max+"";
                            ResultSet rs1 = stmt.executeQuery(str1);
                            while(rs1.next())
                            { %>  
                                <td><h2><%=rs1.getString(2)%></h2></td>
                           <% }
                           %>
                                </tr>
                        </table>
                 <%
                        }
                        catch(Exception e)
                        {
                            out.println(e);
                        }
                %>
            
    </body>
</html>
<%@include file="footer.jsp" %>