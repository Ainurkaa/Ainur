package kz.bitlab.techorda.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kz.bitlab.techorda.db.DBConnection1;
import kz.bitlab.techorda.entity.BitlabShop;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(value = "/home1.html")
public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<BitlabShop> shop = DBConnection1.getBitlabShop();
        request.setAttribute("shop", shop);
        request.getRequestDispatcher("/home1.jsp").forward(request,response);


    }
}
