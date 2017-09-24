<%-- 
    Document   : addCondidate
    Created on : 9 Jul, 2017, 12:05:07 AM
    Author     : DEEPAK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Condidate</title>
        <link class="jsbin" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
        <script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
        <script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.0/jquery-ui.min.js"></script>
        <style>
        article, aside, figure, footer, header, hgroup, 
        menu, nav, section { display: block; }
        </style>
        <script>
                function readURL(input) {
                    if (input.files && input.files[0]) {
                        var reader = new FileReader();

                        reader.onload = function (e) {
                            $('#blah')
                                .attr('src', e.target.result)
                                .width(150)
                                .height(200);
                        };

                        reader.readAsDataURL(input.files[0]);
                    }
                }
                function readURL1(input) {
                    if (input.files && input.files[0]) {
                        var reader = new FileReader();

                        reader.onload = function (e) {
                            $('#blah1')
                                .attr('src', e.target.result)
                                .width(150)
                                .height(200);
                        };

                        reader.readAsDataURL(input.files[0]);
                    }
                }
        </script>
    </head>
    <body bgcolor="lightgray">
        <div align="right">
               <h4> Welcome : <%=session.getAttribute("uname")%> </h4>
            </div>
        <form action="AddCondidate" method="post">
            <table name="condidate_registration" cellspacing="5" align="center">
                
                <tr>
                    <td>
                       First Name
                    </td>
                    <td>
                        <input type="text" name="t1" placeholder="First Name" required="">
                    </td>
                </tr>
                <tr>
                    <td>
                       Last Name
                    </td>
                    <td>
                        <input type="text" name="t2" placeholder="Last Name" required="">
                    </td>
                </tr>
                <tr>
                    <td>
                        Age
                    </td>
                    <td>
                        <input type="text" name="t3" placeholder="Age" required="">
                    </td>
                </tr> 
                <tr>
                    <td>
                        Mobile No
                    </td>
                    <td>
                        <input type="text" name="t4" placeholder="Mobile No" required="">
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
                        Upload Photo
                    </td>
                    <td>
                        <input type="file" name="t5" onchange="readURL(this);">
                        <img id="blah" src="#" alt="Photo" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Election Symbol
                    </td>
                    <td>
                        <input type="file" name="t6" onchange="readURL1(this);">
                        <img id="blah1" src="#" alt="Election Symbol" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Address
                    </td>
                    <td>
                        <textarea type="text" name="t7" placeholder="Address"></textarea>
                    </td>
                </tr>
                <tr>
                    <td>
                        Description
                    </td>
                    <td>
                        <textarea type="text" name="t8" placeholder="Description"></textarea>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <p><input type="submit" value="Add Condidate"></p>
                    </td>
                </tr>
            </table>
        </form>  
    </body>
</html>
<%@include file="footer1.jsp"%>
