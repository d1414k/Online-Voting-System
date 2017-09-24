<%-- 
    Document   : reg
    Created on : 2 Jul, 2017, 6:17:51 PM
    Author     : DEEPAK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body class="e" >
        <h3 align="center">Welcome to Voter Registration</h3>
        <form action="reg">
            <table name="registration" cellspacing="5" align="center">
                
                <tr>
                    <td>
                       Name
                    </td>
                    <td>
                        <input type="text" name="t1" placeholder="Name">
                    </td>
                </tr>
                <tr>
                    <td>
                       Voter Id
                    </td>
                    <td>
                        <input type="text" name="t2" placeholder="Voter Id">
                    </td>
                </tr>
                <tr>
                    <td>
                        Password
                    </td>
                    <td>
                        <input type="text" name="t3" placeholder="Password">
                    </td>
                </tr>

                <tr>
                    <td>
                        Age
                    </td>
                    <td>
                        <input type="text" name="t4" placeholder="Age" required="">
                    </td>
                </tr> 
                <tr>
                    <td>
                        Mobile No
                    </td>
                    <td>
                        <input type="text" name="t5" placeholder="Mobile No">
                    </td>
                </tr>
                <tr>
                    <td>
                        Gender
                    </td>
                    <td>
                        Male<input type="radio" name="r1" value="M">
                        Female<input type="radio" name="r1" value="F">
                    </td>
                </tr>
                <tr>
                    <td>
                        Address
                    </td>
                    <td>
                        <textarea type="text" name="t6" placeholder="Address"></textarea>
                    </td>
                </tr>
                
                
                <tr>
                    <td colspan="2" align="center">
                        <p><input type="submit" value="Create Account"></p>
                    </td>
                </tr>
            </table>
        </form><br>
    </body>
</html><br>
<%@include file="footer.jsp" %>