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
@WebServlet(name = "IngresoServlet", urlPatterns = {"/IngresoServlet"})
public class IngresoServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        // Implementación de la lógica del proceso de la solicitud
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // la lógica para verificar el email y contraseña

        // la autenticación es exitosa
        boolean authSuccess = true; 

        if (authSuccess) {
            // Guardar las credenciales en la sesión para prellenar el formulario en la siguiente pantalla
            HttpSession session = request.getSession();
            session.setAttribute("email", email);
            session.setAttribute("password", password);

            // Redirigir a la pantalla principal
            response.sendRedirect("principal.jsp");
        } else {
            // Redirigir de nuevo a la pantalla de ingreso en caso de fallo
            response.sendRedirect("ingreso.jsp");
        }
    }

    @Override
    public String getServletInfo() {
        return "Servlet para manejo del ingreso de usuarios";
    }
}
