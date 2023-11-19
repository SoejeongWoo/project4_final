package com.example.crudprojectjsp;

import com.example.crudprojectjsp.util.MariaDBConection;

import java.io.*;
import java.nio.charset.Charset;
import java.sql.Connection;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "indexServlet", value = "/home")
public class IndexServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        DramaDAO dramaDAO = new DramaDAO();
        List<DramaVO> dramaInfoList = dramaDAO.getDramaInfoList();
        request.setAttribute("dramas", dramaInfoList);

        request.getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
    }

}