package kz.bitlab.techorda.servlets;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet("/Login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,  IOException {
       response.setContentType("text/html");
        PrintWriter out = response.getWriter();
       String email = request.getParameter("email");
        String password = request.getParameter("password");

        if(email.equals("dossanainur@gmail.com") && password.equals("1234")){
            HttpSession hs= request.getSession();
            hs.setAttribute("uname",email);
            response.sendRedirect("/newPage1.jsp");
        }
        else{
            RequestDispatcher rd=request.getRequestDispatcher("/newPage.jsp");
            rd.include(request,response);


        }
    }
}
