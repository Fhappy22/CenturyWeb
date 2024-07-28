package com.centuryweb.centuryweb;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author felix
 */
@WebServlet(name = "RegistroServlet", urlPatterns = {"/RegistroServlet"})
public class RegistroServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //  procesar el registro si es necesario
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("ingreso.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Recoger los parámetros del formulario de registro
        String name = request.getParameter("name");
        String id = request.getParameter("id");
        String age = request.getParameter("age");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Almacenar los datos en la sesión
        HttpSession session = request.getSession();
        session.setAttribute("name", name);
        session.setAttribute("id", id);
        session.setAttribute("age", age);
        session.setAttribute("email", email);
        session.setAttribute("password", password);

        // Redirigir a la página de perfil
        response.sendRedirect("perfil.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
