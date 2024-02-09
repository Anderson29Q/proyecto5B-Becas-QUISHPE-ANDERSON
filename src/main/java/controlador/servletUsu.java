/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Usuarios;
import modelo.UsuariosDAO;

/**
 *
 * @author Pato
 */
public class servletUsu extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    UsuariosDAO test;
    String mensaje = "Error de conexion"; //variable para enviar mensaje hacia la vista
    

    // metodo para dar orden de abrir la conexion
    public void init() throws ServletException {
        String jdbcURL = getServletContext().getInitParameter("jdbcURL"); //extraigo el dato
        String jdbcUSERName = getServletContext().getInitParameter("jdbcUSERName"); //extraigo el dato
        String jdbcPassword = getServletContext().getInitParameter("jdbcPassword"); //extraigo el dato

        try {
            test = new UsuariosDAO(jdbcURL, jdbcUSERName, jdbcPassword);
            mensaje = "Conexion establecida";
        } catch (SQLException ex) {
            Logger.getLogger(mServlet.class.getName()).log(Level.SEVERE, null, ex);;
            mensaje = "Error de conexion";
        }
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet servletUsu</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet servletUsu at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        String nombreUsu, apellidoUsu, correoUsu, passUsu, crearUsu; // Variables que reciben los parámetros del formulario
        nombreUsu = request.getParameter("nomUsu");
        apellidoUsu = request.getParameter("apeUsu");
        correoUsu = request.getParameter("correoUsu");
        passUsu = request.getParameter("passUsu");
        crearUsu = request.getParameter("crearCuentaUsu");

        if (crearUsu.equalsIgnoreCase("Crear Cuenta")) {
            // Verificar si los campos obligatorios no están vacíos
            if (nombreUsu != null && !nombreUsu.isEmpty()
                    && apellidoUsu != null && !apellidoUsu.isEmpty()
                    && correoUsu != null && !correoUsu.isEmpty()
                    && passUsu != null && !passUsu.isEmpty()) {

                // Crear el objeto Usuarios solo si todos los campos están presentes
                Usuarios objCrear = new Usuarios(0, correoUsu, passUsu, nombreUsu, apellidoUsu);

                if (test.registrar(objCrear)) {
                    mensaje = "El usuario se registró con éxito";
                } else {
                    mensaje = "Error al ingresar datos";
                }
            } else {
                mensaje = "Por favor, complete todos los campos son obligatorios.";
            }
        } else {
            mensaje = "Acción no válida";
        }

        request.setAttribute("registroUsuario", mensaje);
        RequestDispatcher objretorno = request.getRequestDispatcher("registro.jsp");
        objretorno.forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    
    

}
