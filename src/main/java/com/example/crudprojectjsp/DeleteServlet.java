package com.example.crudprojectjsp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "deleteServlet", value = "/delete")
public class DeleteServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        Integer dramaId = Integer.valueOf(request.getParameter("dramaId"));

        DramaDAO dramaDAO = new DramaDAO();
        dramaDAO.deleteDrama(dramaId);

        response.sendRedirect("http://walab.handong.edu:8080//p233_22200461_2/deleteForm?isDeleted=true");
    }

}