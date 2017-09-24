/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
public class AddCondidate extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String fname = request.getParameter("t1");
            String lname = request.getParameter("t2");
            int age =Integer.parseInt(request.getParameter("t3")); 
            String mobile = request.getParameter("t4");
            String gender = request.getParameter("r1");
            String photo = request.getParameter("t5");
            String symbol = request.getParameter("t6");
            String address = request.getParameter("t7");
            String description = request.getParameter("t8");
            try
                {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ovs","root","");
                Statement stmt = con.createStatement();
                String str = "insert into condidate(fname,lname,age,mobile,gender,photo,symbol,address,description) values('"+fname+"','"+lname+"',"+age+",'"+mobile+"','"+gender+"','"+photo+"','"+symbol+"','"+address+"','"+description+"')"; 
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
