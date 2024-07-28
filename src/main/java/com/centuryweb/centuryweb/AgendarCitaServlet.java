package com.centuryweb.centuryweb;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "AgendarCitaServlet", urlPatterns = {"/AgendarCitaServlet"})
public class AgendarCitaServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // No se usa en este caso
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("agendarCitas.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        
        // Recoger los parámetros del formulario
        String fecha = request.getParameter("fecha");
        String hora = request.getParameter("hora");
        String descripcion = request.getParameter("descripcion");
        String archivo = request.getParameter("archivo"); // Si es necesario manejar el archivo
        
        // Crear la representación de la cita
        String cita = "Fecha: " + fecha + ", Hora: " + hora + ", Descripción: " + descripcion;

        // Obtener la lista de citas de la sesión
        List<String> citas = (List<String>) session.getAttribute("citas");
        if (citas == null) {
            citas = new ArrayList<>();
        }
        
        // Agregar la nueva cita a la lista
        citas.add(cita);
        
        // Guardar la lista de citas en la sesión
        session.setAttribute("citas", citas);
        
        // Redirigir a la página de verCitas.jsp
        response.sendRedirect("verCitas.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Servlet para agendar citas";
    }
}
