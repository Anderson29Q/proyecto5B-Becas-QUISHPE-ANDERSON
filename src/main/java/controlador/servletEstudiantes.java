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

import modelo.Estudiantes;
import modelo.EstudiantesDAO;

/**
 *
 * @author Pato
 */
public class servletEstudiantes extends HttpServlet {

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
            out.println("<title>Servlet servletEstudiantes</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet servletEstudiantes at " + request.getContextPath() + "</h1>");
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

        String tipoIden = request.getParameter("tipoIden");
        String numCedula = request.getParameter("numCedula");
        String apellido1 = request.getParameter("apellido1");
        String apellido2 = request.getParameter("apellido2");
        String nombre1 = request.getParameter("nombre1");
        String nombre2 = request.getParameter("nombre2");
        String fechanac = request.getParameter("fechanac");

        String generoEstu = request.getParameter("generoEstu");

        String estadoCi = request.getParameter("estadoCi");

        String etnia = request.getParameter("etnia");

        String txtPueblo = request.getParameter("txtPueblo");

        String tipoSangre = request.getParameter("tipoSangre");

        String discapacidad = request.getParameter("discapacidad");

        String porDisc = request.getParameter("porDisc");
        String numCarnet = request.getParameter("numCarnet");

        String tipoDisca = request.getParameter("tipoDisca");

        String proNaci = request.getParameter("proNaci");
        String cantNaci = request.getParameter("cantNaci");
        String proRes = request.getParameter("proRes");
        String cantRes = request.getParameter("cantRes");
        String correo = request.getParameter("correo");
        String numcelular = request.getParameter("numcelular");

        String formacionPadre = request.getParameter("formacionPadre");

        String formacionMadre = request.getParameter("formacionMadre");

        String totalHogar = request.getParameter("totalHogar");
        String numHogar = request.getParameter("numHogar");

        String tipoColegio = request.getParameter("tipoColegio");

        String modalidad = request.getParameter("modalidad");

        String jornada = request.getParameter("jornada");

        String fechaInicio = request.getParameter("fechaInicio");
        String fechamatricula = request.getParameter("fechamatricula");

        String tipoMatricula = request.getParameter("tipoMatricula");

        String nivelAca = request.getParameter("nivelAca");

        String semanasDuracion = request.getParameter("semanasDuracion");

        String repetidoMateria = request.getParameter("repetidoMateria");

        String carrera = request.getParameter("carrera");

        String paralelo = request.getParameter("paralelo");
        String perdidoGratuidad = request.getParameter("perdidoGratuidad");

        String pension = request.getParameter("pension");

        String seEncuentra = request.getParameter("seEncuentra");

        String empleIngresos = request.getParameter("empleIngresos");

        String recibeBono = request.getParameter("recibeBono");

        String realizoPracticas = request.getParameter("realizoPracticas");

        String horasprac = request.getParameter("horasprac");
        String instprac = request.getParameter("instprac");
        String econprac = request.getParameter("econprac");

        String participadoVincu = request.getParameter("participadoVincu");

        String alcanceVin = request.getParameter("alcanceVin");

        String nombreComponente = request.getParameter("nombreComponente");

        String requi = request.getParameter("requi");

        boolean disc;
        int porcentajeDis;
        int numeroCarnet;
        float ingresoHogar;
        int numeroMiembros;
        boolean repetido;
        boolean perdido;
        boolean pensionDif;
        boolean recBono;
        boolean reaPrac;
        boolean parVincu;

        if (tipoIden != null && !tipoIden.isEmpty()
                && numCedula != null && !numCedula.isEmpty()
                && apellido1 != null && !apellido1.isEmpty()
                && apellido2 != null && !apellido2.isEmpty()
                && nombre1 != null && !nombre1.isEmpty()
                && nombre2 != null && !nombre2.isEmpty()
                && fechanac != null && !fechanac.isEmpty()
                && generoEstu != null && !generoEstu.isEmpty()
                && estadoCi != null && !estadoCi.isEmpty()
                && etnia != null && !etnia.isEmpty()
                && txtPueblo != null && !txtPueblo.isEmpty()
                && tipoSangre != null && !tipoSangre.isEmpty()
                && discapacidad != null && !discapacidad.isEmpty()
                && porDisc != null && !porDisc.isEmpty()
                && numCarnet != null && !numCarnet.isEmpty()
                && tipoDisca != null && !tipoDisca.isEmpty()
                && proNaci != null && !proNaci.isEmpty()
                && cantNaci != null && !cantNaci.isEmpty()
                && proRes != null && !proRes.isEmpty()
                && cantRes != null && !cantRes.isEmpty()
                && correo != null && !correo.isEmpty()
                && numcelular != null && !numcelular.isEmpty()
                && formacionPadre != null && !formacionPadre.isEmpty()
                && formacionMadre != null && !formacionMadre.isEmpty()
                && totalHogar != null && !totalHogar.isEmpty()
                && numHogar != null && !numHogar.isEmpty()
                && tipoColegio != null && !tipoColegio.isEmpty()
                && modalidad != null && !modalidad.isEmpty()
                && jornada != null && !jornada.isEmpty()
                && fechaInicio != null && !fechaInicio.isEmpty()
                && fechamatricula != null && !fechamatricula.isEmpty()
                && tipoMatricula != null && !tipoMatricula.isEmpty()
                && nivelAca != null && !nivelAca.isEmpty()
                && semanasDuracion != null && !semanasDuracion.isEmpty()
                && repetidoMateria != null && !repetidoMateria.isEmpty()
                && carrera != null && !carrera.isEmpty()
                && paralelo != null && !paralelo.isEmpty()
                && perdidoGratuidad != null && !perdidoGratuidad.isEmpty()
                && pension != null && !pension.isEmpty()
                && seEncuentra != null && !seEncuentra.isEmpty()
                && empleIngresos != null && !empleIngresos.isEmpty()
                && recibeBono != null && !recibeBono.isEmpty()
                && realizoPracticas != null && !realizoPracticas.isEmpty()
                && horasprac != null && !horasprac.isEmpty()
                && instprac != null && !instprac.isEmpty()
                && econprac != null && !econprac.isEmpty()
                && participadoVincu != null && !participadoVincu.isEmpty()
                && alcanceVin != null && !alcanceVin.isEmpty()
                && nombreComponente != null && !nombreComponente.isEmpty()
                && requi != null && !requi.isEmpty()) {

            if (acc.equalsIgnoreCase("guardar")) {
                Estudiantes objEstu = new Estudiantes(0, tipoIden, numCedula, apellido1, apellido2, nombre1, nombre2, fechanac, generoEstu, estadoCi, etnia, txtPueblo, tipoSangre, discapacidad, porDisc, numCarnet, tipoDisca, proNaci, cantNaci, proRes, cantRes, correo, numcelular, formacionPadre, formacionMadre, totalHogar, numHogar, tipoColegio, modalidad, jornada, fechaInicio, fechamatricula, tipoMatricula, nivelAca, semanasDuracion, repetidoMateria, carrera, paralelo, perdidoGratuidad, pension, seEncuentra, empleIngresos, recibeBono, realizoPracticas, horasprac, instprac, econprac, participadoVincu, alcanceVin, nombreComponente, requi);
                if (estudiantesDAO.registrar(objEstu)) {
                    System.out.println("DATOS REGISTRADOS");
                } else {
                    System.out.println("ERROR AL INGRESAR DATOS");
                }
            }
        } else {
            System.out.println("LOS CAMPOS ESTAN VACIOS");
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher("datos-estudiantes.jsp");
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
