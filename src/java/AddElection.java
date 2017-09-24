/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddElection extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String post = request.getParameter("t1");
            String date = request.getParameter("t2");
           
           try
                {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ovs","root","");
                Statement stmt1 = con.createStatement();
                String str1 = "select * from condidate";
                ResultSet rs1 = stmt1.executeQuery(str1);
                con.setAutoCommit(false);
                Statement stmt2 = con.createStatement();
                String str3="truncate election";
                stmt2.addBatch(str3);
                String str4="truncate vote";
                stmt2.addBatch(str4);
                String str5 = "truncate voter_info";
                stmt2.addBatch(str5);
                while(rs1.next())
                    {
                    String str2 = "insert into vote(party_name,votes) values('"+rs1.getString(2)+"',0)";
                    stmt2.addBatch(str2);
                    }
                int [] count = stmt2.executeBatch();
                con.commit();
		con.close();
                }
                catch(Exception e)
                {
                out.println(e);
                }
           try
                {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ovs","root","");
                Statement stmt = con.createStatement();
                String str = "insert into election(post,date) values('"+post+"','"+date+"')"; 
                stmt.executeUpdate(str);
                con.close();
                response.sendRedirect("adminpage.jsp");
                }
                catch(Exception e)
                {
                out.println(e);
                }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
