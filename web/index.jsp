
<%-- 
    Document   : index
    Created on : 2 Jul, 2017, 5:17:17 PM
    Author     : DEEPAK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width">
        <link href="indexcss.css" type="text/css" rel="stylesheet">
        <title>Online Voting System</title>
    </head>
    <style>
    .e
           {
               /*background:url("image/5.jpg");*/
               background-size: 100% 100%;
               background-repeat: no-repeat;
               background-position: center;
               background-color: lightgray;
               
           }
    </style>
    <body class="e" >
        <table cellspacing="0" align="center" style="width:100%" border="0">
            <col width="25%">
            <col width="50%">
            <tr>
                <td>
                    <form action="login" method="post" >
                        <table align="center" border="0" cellspacing="10">
                            <tr align="center">
                                <th><h3>Voter Login</h3><th>
                            </tr>
                            <tr>
                                <td align="center"><p><input type="text" name="t1" margin-left=40px placeholder="Enter Registered Voter Id" required=""></p></td>
                            </tr>
                            <tr>
                                <td><input type="password" name="t2" placeholder="Password" required=""></td>
                            </tr>
                            <tr>
                               <td align="center"><p><input type="submit" value="Login">&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="Clear"></p></td>
                            </tr>
                            <tr>
                                <td align="center"><p><a href="reg.jsp">New User Register</a></p></td>
                            </tr>
                        </table>
                    </form> 
                    <br><br><br>
                </td>
                <td>
                    <img src="image/1.jpg" width="100%" height="50%">
                </td>
                <td>
                    <form action="Admin">
                        <table align="center" border="0" cellspacing="10">
                            <tr align="center">
                                <th><h3>Admin Login</h3><th>
                            </tr>
                            <tr>
                                <td align="center"><p><input type="text" name="t1" margin-left=40px placeholder="Username" required=""></p></td>
                            </tr>
                            <tr>
                                <td><input type="password" name="t2" placeholder="Password" required=""></td>
                            </tr>
                            <tr>
                               <td align="center"><p><input type="submit" value="Login">&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="Clear"></p></td>
                            </tr>
                        </table>
                    </form> 
                </td>
            </tr> 
        </table>
</body>
</html>
<%@include file="footer1.jsp" %>
