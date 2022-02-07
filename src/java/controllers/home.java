package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.lang.Math;   


public class home extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if ("GET".equals(request.getMethod())) {
            HttpSession session = request.getSession();
            String email = (String) session.getAttribute("userEmail");
            if (email == null) {
                response.sendRedirect("/Management-System/register");
            } else {
                response.setContentType("text/html;charset=UTF-8");
                request.getRequestDispatcher("/WEB-INF/home.jsp").forward(request, response);
            }
        } else if ("POST".equals(request.getMethod())) {

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
        return "Home servelet:-))";
    }
}
