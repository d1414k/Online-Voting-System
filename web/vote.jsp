<%-- 
    Document   : vote
    Created on : 2 Jul, 2017, 7:44:21 PM
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
        <script language="javascript">
            function showData(value)
            {
                /*Object creation */
                var xHttp;
                if(window.XMLHttpRequest)// code for modern browsers
                    xHttp = new XMLHttpRequest();
                else                    // code for old IE browsers
                    xHttp = new ActiveXObject("Microsoft.XMLHTTP");
                
                xHttp.onreadystatechange = function()
                {
                  if(this.readyState == 4 && this.status == 200)
                  {
                      var Str_data = xHttp.responseText;
                      var data = Str_data.split(":");
                   document.getElementById("fname").innerHTML = data[0];
                   document.getElementById("lname").innerHTML = data[1];
                   document.getElementById("age").innerHTML = data[2];
                   document.getElementById("mobile").innerHTML = data[3];
                   document.getElementById("gender").innerHTML = data[4];
                   document.getElementById("photo").src= data[5];
                   document.getElementById("symbol").src = data[6];
                   document.getElementById("address").innerHTML = data[7];
                   document.getElementById("description").innerHTML = data[8];
                  }
                };
                xHttp.open("GET","getData.jsp?fname="+value,true);
                xHttp.send();
            }
        </script>
    </head>
    <body bgcolor="lightgray">
        <table align="center">
            <tr>
                <td>
                    <form action="vote" method="post">
                        <table border="1" cellspacing="0">
                            <tr>
                                <td><h4>Your Registered Voter Card Number is </h4></td>
                                <td align="center"><h4><%=session.getAttribute("voter")%></h4></td>
                            </tr>
                            <tr>
                                <td><h4>Your Name </h4></td>
                                <td><h4><%=session.getAttribute("name")%></h4></td>
                                </tr>
                            </tr>
                            <tr>
                                <td><h4>You are Voting for the Post of</h4></td>
                                <%
                                    String post=""; 
                                    try
                                        {
                                        Class.forName("com.mysql.jdbc.Driver");
                                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ovs","root","");
                                        Statement stmt = con.createStatement();
                                        String str = "select * from election";
                                        ResultSet rs = stmt.executeQuery(str);
                                        if(rs.next())
                                            {
                                                post=(String)rs.getString(2);
                                            }
                                        }
                                    catch(Exception e)
                                    {
                                        out.println(e);
                                    }
                                %>
                                <td><h4><%=post%></h4></td>
                            </tr>
                            <tr>
                                <td align="center"><p>
                                        <select name="t1" onchange="showData(value);">
                                        <option value="none">Select your Condidate</option>
                                        <% 
                                        try
                                            {
                                            Class.forName("com.mysql.jdbc.Driver");
                                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ovs","root","");
                                            Statement stmt = con.createStatement();
                                            String str = "select * from condidate";
                                            ResultSet rs = stmt.executeQuery(str);
                                            while(rs.next())
                                            {%>
                                            <option value=<%=rs.getString(2)%>><%=rs.getString(2)%></option>
                                            <%
                                            }
                                            con.close();
                                            }
                                            catch(Exception e)
                                            {
                                            out.println(e);
                                            }
                                        %>
                                    </select>
                                </p></td>
                            </tr>
                            <tr>
                                <td align="center"><p><input type="submit" value="Vote"></p></td>
                        </form>
                                <td align="center">
                                    <form action="Logout">
                                    <input type="submit" value="Logout">
                                    </form>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td></td>
                    <td>
                        <table border="1" cellspacing="0">
                            <tr >
                                <th colspan="2" align="center">Selected Condidate Details</th>
                            </tr>
                            <tr>
                                <td>First Name</td>
                                <td id="fname"></td>
                            </tr>
                            <tr>
                                <td>Last Name</td>
                                <td id="lname"></td>
                            </tr>
                            <tr>
                                <td>Age</td>
                                <td id="age"></td>
                            </tr>
                            <tr>
                                <td>Mobile No</td>
                                <td id="mobile"></td>
                            </tr>
                            <tr>
                                <td>Gender</td>
                                <td id="gender"></td>
                            </tr>
                            <tr>
                                <td>Photo</td>
                                <td>
                                    <img id="photo" height="200" width="300">
                                </td>
                            </tr>
                            <tr>
                                <td>Election Symbol</td>
                                <td>
                                    <img id="symbol" height="200" width="300">
                                </td>
                            </tr>
                            <tr>
                                <td>Address</td>
                                <td id="address"></td>
                            </tr>
                            <tr>
                                <td>Description</td>
                                <td id="description"></td>
                            </tr>
                        </table>
                     </td>   
                </tr>
            </table>                                     
    </body>
</html>
<%@include file="footer1.jsp" %>