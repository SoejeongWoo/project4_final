package com.example.crudprojectjsp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

@WebServlet(name = "addDramaServlet", value = "/add")
public class AddDramaServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        DramaDAO dramaDAO = new DramaDAO();

        String dramaName = request.getParameter("dramaName");
        String releaseDate = request.getParameter("releaseDate");
        String summary = request.getParameter("summary");
        String genre = request.getParameter("genre");

        DramaVO dramaVO = new DramaVO();
        dramaVO.setSummary(summary);
        dramaVO.setDramaPoster("gettingready.png");
        dramaVO.setDramaName(dramaName);
        dramaVO.setGenre(genre);
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");         // 문자열 -> Date        Date date = formatter.parse(dateStr);
        try {
            dramaVO.setReleaseDate(formatter.parse(releaseDate));
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }

        dramaDAO.insertDrama(dramaVO);

        response.sendRedirect("/home");
    }

}