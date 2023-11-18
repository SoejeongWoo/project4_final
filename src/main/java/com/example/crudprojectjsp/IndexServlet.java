package com.example.crudprojectjsp;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "indexServlet", value = "/home")
public class IndexServlet extends HttpServlet {

    @Override
    public void init() throws ServletException {
        System.out.println("아무말");
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        request.getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
    }
}