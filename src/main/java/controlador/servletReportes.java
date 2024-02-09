/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Estudiantes;
import modelo.EstudiantesDAO;

/**
 *
 * @author Pato
 */
public class servletReportes extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    EstudiantesDAO estudiantesDAO;

    String mensaje = "Error de conexion"; //variable para enviar mensaje hacia la vista

    // metodo para dar orden de abrir la conexion
    public void init() throws ServletException {
        String jdbcURL = getServletContext().getInitParameter("jdbcURL"); //extraigo el dato
        String jdbcUSERName = getServletContext().getInitParameter("jdbcUSERName"); //extraigo el dato
        String jdbcPassword = getServletContext().getInitParameter("jdbcPassword"); //extraigo el dato

        try {
            estudiantesDAO = new EstudiantesDAO(jdbcURL, jdbcUSERName, jdbcPassword);

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
            out.println("<title>Servlet servletReportes</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet servletReportes at " + request.getContextPath() + "</h1>");
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
        request.setCharacterEncoding("UTF-8");
        String acc = request.getParameter("acc");
        String idEstu = request.getParameter("idEst");

        String buscarCedula = request.getParameter("buscarCedula");
        ArrayList<Estudiantes> arrobjuno = new ArrayList();
        ArrayList<Estudiantes> arrobj = new ArrayList();

        if (buscarCedula != null && !buscarCedula.isEmpty()) {
            if (acc.equalsIgnoreCase("buscar")) {
                //dar la orden de estraer uno
                arrobjuno = estudiantesDAO.buscarCed(buscarCedula);
                System.out.println("DATOS ENCONTRADOS");
            } else {
                System.out.println("DATOS NO ENCONTRADOS");
            }
        }
        if (acc.equalsIgnoreCase("cargar")) {
            //dar la orden de estraer todo
            arrobj = estudiantesDAO.SeleccionarTodo();
        }
        if (acc.equals("eliminar")) {
            if (idEstu != null && !idEstu.isEmpty()) {
                int id = Integer.parseInt(idEstu);
                Estudiantes objborr = new Estudiantes(id, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
                if (estudiantesDAO.Eliminar(objborr)) {
                    System.out.println("REGISTRO ELIMINADO");
                } else {
                    System.out.println("REGISTRO NO ELIMINADO");
//                    mensaje = "No se ha eliminado el registro";
                }
            } else {
                //              mensaje = "No se proporcionó el ID del componente a eliminar";
                System.out.println("ERROR AL ELIMINAR");
            }
        }

        request.setAttribute("cajitaReporte", arrobj);//para enviar los mensajes de la base
        request.setAttribute("cajitaReporteUno", arrobjuno);//para enviar los mensajes de la base
        RequestDispatcher dispatcher = request.getRequestDispatcher("becarios.jsp");
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
