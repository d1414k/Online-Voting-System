<%-- 
    Document   : aboutus
    Created on : Oct 6, 2016, 1:22:20 PM
    Author     : Oops
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@ include file="header.jsp"%>
        <title>JSP Page</title>
    </head>
    <body bgcolor="lightgray">
        <p>
        <div>
            Online Election System would have Candidate registration, document verification, auto-generated User ID and pass for
            candidate and Voters. Admin Login which will be handled by Election Commission .Candidate Login which will be
            handled By Candidate, Voters will get Unique ID and Password, Using which they can vote for a Candidate only once per
            Election. The project is beneficial for Election Commission, Voters as the can get to know the candidate background and
            choose wisely, and even for Candidate. The software system allows the Candidate to login in to their profiles and upload all
            their details including their previous milestone onto the system. The admin can check each Candidate details and verify the
            documents, only after verifying Candidate’s ID and Password will be generated, and can remove faulty accounts. The
            software system allows Voters to view a list of Candidates in their area. The admin has overall rights over the system and
            can moderate and delete any details not pertaining to Election Rules.
        </div>
        </p>
        <h4>Modules:</h4>
            <ul>
                <li>Admin Login</li>
                <li>Candidate Document Verification</li>
                <li>Candidate Login</li>
                <li>Voters Login</li>
                <li>Voters can view Candidate’s data</li>
                <li>Admin dashboard has overall functional rights</li>
                <li>Appropriate data processing and handling</li>
                <li>System generated ID and Password for Candidate and Voters</li>
                <li>Result Calculation module</li>
                <li>Election Creation module</li>
                <li>Voting conduction module</li>
            </ul>
        <%@ include file="footer.jsp"%>
    </body>
</html>
