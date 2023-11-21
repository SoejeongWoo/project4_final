package com.example.crudprojectjsp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "updateFormDramaServlet", value = "/updateForm")
public class UpdateFormDramaServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        Integer dramaId = Integer.valueOf(request.getParameter("dramaId"));

        DramaDAO dramaDAO = new DramaDAO();
        DramaVO drama = dramaDAO.getDramaInfo(dramaId);
        request.setAttribute("drama", drama);

        request.getRequestDispatcher("/WEB-INF/editForm.jsp").forward(request, response);
    }

}