<%-- 
    Document   : addElection
    Created on : 9 Jul, 2017, 1:34:33 PM
    Author     : DEEPAK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Election</title>
    </head>
    <body>
        <div align="right">
               <h4> Welcome : <%=session.getAttribute("uname")%> </h4>
            </div>
        <form action="AddElection">
              <table cellspacing="10">
                  <tr>
                      <td>Enter Post</td>
                      <td><input type="text" name="t1" placeholder="Enter Post"></td>
                  </tr>
                  <tr>
                      <td>Enter End Date</td>
                      <td><input type="date" name="t2"></td>
                  </tr>
                  
                  <tr>
                      <td colspan="2" align="center"><input type="submit" value="Start Election"></td>
                  </tr> 
              </table>
         </form>
    </body>
</html>
<%@include file="footer.jsp" %>