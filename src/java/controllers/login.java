/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author HP
 */
public class login extends HttpServlet {

 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       if("POST".equals(request.getMethod())){
            DatabaseConn conn = new DatabaseConn();
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            user u = conn.GetUserByEmail(email,password);
           if(u.email == "EMPTY" || u.password == "EMPTY"){
               System.out.println("User not logged in")
           }else{
                HttpSession session = request.getSession();
                session.setAttribute("userEmail", email);
                session.setAttribute("user_id",user_id)
                session.setMaxInactiveInterval(30 * 60);
                response.sendRedirect("/Management-System/home");
           }       
       }else if("GET".equals(request.getMethod())){
           //handle get requests
       }
    }

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

 
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
