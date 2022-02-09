package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import models.*;

public class booking extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession(false);
        DatabaseConn conn = new DatabaseConn();
        if ("GET".equals(request.getMethod())) {

        } else if ("POST".equals(request.getMethod())) {
            String orderId = request.getParameter("id");
            boolean isOrdered = conn.CheckOrderById(orderId);
            if (isOrdered) {
                request.getRequestDispatcher("/WEB-INF/room_already_booked.jsp").forward(request, response);
            } else {
                String userEmail = (String) session.getAttribute("userEmail");
                String userId = (String) session.getAttribute("user_id");
                if (userEmail == null) {
                    response.sendRedirect("/Management-System/login");
                } else {
                    try {
                        boolean result = conn.CreateOrder(userId, orderId);
                        if (result) {
                            request.getRequestDispatcher("/WEB-INF/order_created.jsp").forward(request, response);

                        }
                    } catch (Exception ex) {
                        Logger.getLogger(register.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
            }

        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
        } catch (SQLException ex) {
            Logger.getLogger(booking.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
        } catch (SQLException ex) {
            Logger.getLogger(booking.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
