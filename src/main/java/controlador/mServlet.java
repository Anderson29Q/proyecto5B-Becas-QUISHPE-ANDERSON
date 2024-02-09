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
import javax.servlet.http.HttpSession;
import modelo.Procesar;
import modelo.Usuarios;
import modelo.UsuariosDAO;

/**
 *
 * @author Pato
 */
public class mServlet extends HttpServlet {

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
    String sms = null;

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
            out.println("<title>Servlet mServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet mServlet at " + request.getContextPath() + "</h1>");
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
        String usu = request.getParameter("usuario");
        String pass = request.getParameter("pass");
        HttpSession session = request.getSession();
        Procesar pro = new Procesar(usu, pass);
        String resultado = pro.Validar(session);
        String sms = "";

        if ("exitoso".equals(resultado)) {
            // Redirigir a otra página
            response.sendRedirect("inicio.jsp");
            return; // Importante: detener la ejecución después de la redirección

        } else if (resultado.startsWith("restar")) {
            int intentos = Integer.parseInt(resultado.split(":")[1]);
            sms = "Usuario o contraseña incorrectos.Intentos restantes: " + intentos;

        } else if ("bloqueado".equals(resultado)) {
            sms = "Su cuenta fue bloqueada";
        }
        request.setAttribute("inicioSesion", sms);
        request.setAttribute("cajitaBase", mensaje);
        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request, response);

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
