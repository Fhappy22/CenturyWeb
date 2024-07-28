package com.centuryweb.centuryweb;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "GuardarCitaServlet", urlPatterns = {"/GuardarCitaServlet"})
public class GuardarCitaServlet extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // No se utiliza en este ejemplo
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String descripcion = request.getParameter("descripcion");

        HttpSession session = request.getSession();
        List<String> citas = (List<String>) session.getAttribute("citas");

        if (citas == null) {
            citas = new ArrayList<>();
        }

        citas.add(descripcion);
        session.setAttribute("citas", citas);

        response.sendRedirect("verCitas.jsp");
    }

    @Override
    public String getServletInfo() {
        return "GuardarCitaServlet";
    }
}
