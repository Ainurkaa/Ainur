package kz.bitlab.techorda.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kz.bitlab.techorda.entity.BitlabShop;

import java.io.IOException;

@WebServlet("/addShop")
public class AddShopServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       request.getRequestDispatcher("addShop.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String  description= request.getParameter("description");
        String price  = request.getParameter("price");
        double price1 = Double.parseDouble(price);
        BitlabShop shop1 = new BitlabShop();
        shop1.setName(name);
        shop1.setDescription(description);
        shop1.setPrice(price1);
        kz.bitlab.techorda.db.DBConnection1.addBitlabShop(new BitlabShop(name,description,price1));
        response.sendRedirect("/home1");
    }
}
