package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import models.*;
import services.*;

public class register extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        if ("POST".equals(request.getMethod())) {
         request.setAttribute("user_id",Math.random());

            DatabaseConn conn = new DatabaseConn();
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String user_id = request.getParameter("user_id");

            try {
                email e = new email();
                Boolean result = conn.InsertUser(user_id,email, password);
                if (result) {
                    HttpSession session = request.getSession();
                    session.setAttribute("userEmail", email);
                    session.setAttribute("user_id",user_id)
                    session.setMaxInactiveInterval(30 * 60);
                    // e.SendEmail("CountryInn", "Welcome to countryInn", email);
                    response.sendRedirect("/Management-System/home");
                } else {
                    try (PrintWriter out = response.getWriter()) {
                        out.println("<h> Registration failed </h1>");
                    }
                }
            } catch (Exception ex) {
                Logger.getLogger(register.class.getName()).log(Level.SEVERE, null, ex);
            }

        } else if ("GET".equals(request.getMethod())) {
            Logger.getLogger(register.class.getName()).log(Level.SEVERE, null, "Get called");
            DatabaseConn conn = new DatabaseConn();
            request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);

        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(register.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(register.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
