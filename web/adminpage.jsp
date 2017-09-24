<%-- 
    Document   : adminpage
    Created on : 8 Jul, 2017, 12:33:58 AM
    Author     : DEEPAK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Voting System</title>
    </head>
        <body bgcolor="lightgray">
            <div align="right">
               <h4> Welcome : <%=session.getAttribute("uname")%> </h4>
            </div>
                        <form>
                           <table align="center">
                               <tr>
                                    <td>
                                        <input type="button" onclick="location.href='addCondidate.jsp'" value="Add Condidate">
                                   </td>
                               </tr>
                               <tr>
                                    <td>
                                        <input type="button" onclick="location.href='addElection.jsp'" value="Add New Election">
                                    </td>
                               </tr>
                               <tr>
                                    <td>
                                        <input type="button" onclick="location.href='viewResult.jsp'" value="View Election Result">
                                   </td>
                               </tr>
                               </form>
                               <tr>
                                    <td>
                                        <form action="Logout">
                                        <input type="submit" value="Log out">
                                        </form> 
                                    </td>
                               </tr>
                           </table>
                          
   </body>
</html>
<%@include file="footer.jsp" %>
