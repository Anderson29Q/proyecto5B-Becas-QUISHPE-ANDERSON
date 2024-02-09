/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Pato
 */
public class EstudiantesDAO {

    private ConexionBase conecta;

    public EstudiantesDAO(String jdbcURL, String jdbcUSERName, String jdbcPassword) throws SQLException {
        conecta = new ConexionBase(jdbcURL, jdbcUSERName, jdbcPassword);
    }

    // metodo para insertar en la base de datos
    public boolean registrar(Estudiantes objest) {

        boolean estado = false;//variable para insertar la inserccion de datos  
        Statement stm; //interpreta cod SQL desde JAVA
        String sql = "CALL InsertarEstudiante("
                + "null, "
                + "'" + objest.getTIPOIDENTIFICACIONESTUDIANTE() + "', "
                + "'" + objest.getNUMIDENTIFICACIONESTUDIANTE() + "', "
                + "'" + objest.getPRIMERAPELLIDOESTUDIANTE() + "', "
                + "'" + objest.getSEGUNDOAPELLIDOESTUDIANTE() + "', "
                + "'" + objest.getPRIMERNOMBREESTUDIANTE() + "', "
                + "'" + objest.getSEGUNDONOMBREESTUDIANTE() + "', "
                + "'" + objest.getFECHANACIMIENTOESTUDIANTE() + "', "
                + "'" + objest.getGENEROESTUDIANTE() + "', "
                + "'" + objest.getESTADOCIVILESTUDIANTE() + "', "
                + "'" + objest.getETNIAESTUDIANTE() + "', "
                + "'" + objest.getPUEBLOESTUDIANTE() + "', "
                + "'" + objest.getTIPOSANGREESTUDIANTE() + "', "
                + "'" + objest.getTIENEDISCAPACIDAD() + "', "
                + "'" + objest.getPORCENTAJEDISCAPACIDADESTUDIANTE() + "', "
                + "'" + objest.getNUMCARNETESTUDIANTE() + "', "
                + "'" + objest.getTIPODISCAPACIDAD() + "', "
                + "'" + objest.getPROVINCIANACIMIENTOESTUDIANTE() + "', "
                + "'" + objest.getCANTONNACIMIENTOESTUDIANTE() + "', "
                + "'" + objest.getPROVINCIARESIDENCIAESTUDIANTE() + "', "
                + "'" + objest.getCANTONRESIDENCIAESTUDIANTE() + "', "
                + "'" + objest.getCORREOESTUDIANTE() + "', "
                + "'" + objest.getNUMEROCELULARESTUDIANTE() + "', "
                + "'" + objest.getNIVELFORMACIONPADREDEESTUDIANTE() + "', "
                + "'" + objest.getNIVELFORMACIONMADREDEESTUDIANTE() + "', "
                + "'" + objest.getINGRESOTOTALHOGARESTUDIANTE() + "', "
                + "'" + objest.getNUMEROMIEMBROSHOGARESTUDIANTE() + "', "
                + "'" + objest.getTIPOCOLEGIOESTUDIANTE() + "', "
                + "'" + objest.getMODALIDADCARRERAESTUDIANTE() + "', "
                + "'" + objest.getJORNADACARRERAESTUDIANTE() + "', "
                + "'" + objest.getFECHAINICIOCARRERAESTUDIANTE() + "', "
                + "'" + objest.getFECHAMATRICULAESTUDIANTE() + "', "
                + "'" + objest.getTIPOMATRICULAESTUDIANTE() + "', "
                + "'" + objest.getNIVELACADEMICOESTUDIANTE() + "', "
                + "'" + objest.getSEMANASDURACIONPERIODOESTUDIANTE() + "', "
                + "'" + objest.getREPETIDOMATERIAESTUDIANTE() + "', "
                + "'" + objest.getCARRERAESTUDIANTE() + "', "
                + "'" + objest.getPARALELOESTUDIANTE() + "', "
                + "'" + objest.getPERDIDOGRATUIDADESTUDIANTE() + "', "
                + "'" + objest.getPOSEEPENSIONESTUDIANTE() + "', "
                + "'" + objest.getENCUENTRADEDICADOESTUDIANTE() + "', "
                + "'" + objest.getEMPLEAINGRESOSESTUDIANTE() + "', "
                + "'" + objest.getFAMILIARECIBEBONODESARROLLOHUMANOESTUDIANTE() + "', "
                + "'" + objest.getREALIZADOPRACTICASESTUDIANTE() + "', "
                + "'" + objest.getHORASPRACTICAREALIZOESTUDIANTE() + "', "
                + "'" + objest.getTIPOINSTITUCIONREALIZAPRACTICASESTUDIANTE() + "', "
                + "'" + objest.getSECTORECONOMICOPRACTICASESTUDIANTE() + "', "
                + "'" + objest.getPARTICIPADOPROYECTODEVINCULACIONESTUDIANTE() + "', "
                + "'" + objest.getALCANCEPROYECTOVINCULACIONESTUDIANTE() + "', "
                + "'" + objest.getCOMPONENTEESTUDIANTE() + "', "
                + "'" + objest.getREQUISITOSCOMPONENTEESTUDIANTE() + "')";
// Execute the SQL query using the 'sql' string
        try {
            conecta.connection();//abrir la conexion
            stm = conecta.getJdbcConnection().createStatement();
            stm.executeUpdate(sql); //ejecuto el script de la variable SQL
            estado = true; // si se ejecuta la inserccion 
            stm.close();
            conecta.disconnect();// cierra la conexion

        } catch (SQLException objerr) {
            estado = false;// no se ejecuto la inserccion
            objerr.printStackTrace();//imprimo toda la traza del error
        }
        return estado;
    }

    public ArrayList buscarCed(String cedula) {
        Estudiantes objEst = null;
        ArrayList<Estudiantes> arrayDAOest = new ArrayList<>();
        Statement stm;
        ResultSet resConsulta = null; // para recibir cada registro de la base
        String sql = "select * from estudiantes where NUMIDENTIFICACIONESTUDIANTE=" + cedula;
        try {
            conecta.connection();
            stm = conecta.getJdbcConnection().createStatement();
            resConsulta = stm.executeQuery(sql);
            while (resConsulta.next()) {
                objEst = new Estudiantes(resConsulta.getInt("IDESTUDIANTE"), resConsulta.getString("TIPOIDENTIFICACIONESTUDIANTE"), resConsulta.getString("NUMIDENTIFICACIONESTUDIANTE"), resConsulta.getString("PRIMERAPELLIDOESTUDIANTE"), resConsulta.getString("SEGUNDOAPELLIDOESTUDIANTE"), resConsulta.getString("PRIMERNOMBREESTUDIANTE"), resConsulta.getString("SEGUNDONOMBREESTUDIANTE"), resConsulta.getString("FECHANACIMIENTOESTUDIANTE"), resConsulta.getString("GENEROESTUDIANTE"), resConsulta.getString("ESTADOCIVILESTUDIANTE"), resConsulta.getString("ETNIAESTUDIANTE"), resConsulta.getString("PUEBLOESTUDIANTE"), resConsulta.getString("TIPOSANGREESTUDIANTE"), resConsulta.getString("TIENEDISCAPACIDAD"), resConsulta.getString("PORCENTAJEDISCAPACIDADESTUDIANTE"), resConsulta.getString("NUMCARNETESTUDIANTE"), resConsulta.getString("TIPODISCAPACIDAD"), resConsulta.getString("PROVINCIANACIMIENTOESTUDIANTE"), resConsulta.getString("CANTONNACIMIENTOESTUDIANTE"), resConsulta.getString("PROVINCIARESIDENCIAESTUDIANTE"), resConsulta.getString("CANTONRESIDENCIAESTUDIANTE"), resConsulta.getString("CORREOESTUDIANTE"), resConsulta.getString("NUMEROCELULARESTUDIANTE"), resConsulta.getString("NIVELFORMACIONPADREDEESTUDIANTE"), resConsulta.getString("NIVELFORMACIONMADREDEESTUDIANTE"), resConsulta.getString("INGRESOTOTALHOGARESTUDIANTE"), resConsulta.getString("NUMEROMIEMBROSHOGARESTUDIANTE"), resConsulta.getString("TIPOCOLEGIOESTUDIANTE"), resConsulta.getString("MODALIDADCARRERAESTUDIANTE"), resConsulta.getString("JORNADACARRERAESTUDIANTE"), resConsulta.getString("FECHAINICIOCARRERAESTUDIANTE"), resConsulta.getString("FECHAMATRICULAESTUDIANTE"), resConsulta.getString("TIPOMATRICULAESTUDIANTE"), resConsulta.getString("NIVELACADEMICOESTUDIANTE"), resConsulta.getString("SEMANASDURACIONPERIODOESTUDIANTE"), resConsulta.getString("REPETIDOMATERIAESTUDIANTE"), resConsulta.getString("CARRERAESTUDIANTE"), resConsulta.getString("PARALELOESTUDIANTE"), resConsulta.getString("PERDIDOGRATUIDADESTUDIANTE"), resConsulta.getString("POSEEPENSIONESTUDIANTE"), resConsulta.getString("ENCUENTRADEDICADOESTUDIANTE"), resConsulta.getString("EMPLEAINGRESOSESTUDIANTE"), resConsulta.getString("FAMILIARECIBEBONODESARROLLOHUMANOESTUDIANTE"), resConsulta.getString("REALIZADOPRACTICASESTUDIANTE"), resConsulta.getString("HORASPRACTICAREALIZOESTUDIANTE"), resConsulta.getString("TIPOINSTITUCIONREALIZAPRACTICASESTUDIANTE"), resConsulta.getString("SECTORECONOMICOPRACTICASESTUDIANTE"), resConsulta.getString("PARTICIPADOPROYECTODEVINCULACIONESTUDIANTE"), resConsulta.getString("ALCANCEPROYECTOVINCULACIONESTUDIANTE"), resConsulta.getString("COMPONENTEESTUDIANTE"), resConsulta.getString("REQUISITOSCOMPONENTEESTUDIANTE"));
                arrayDAOest.add(objEst);//agrego una fila al array con el registro extraido
            }
            stm.close();
            conecta.disconnect();
        } catch (SQLException e) {
            e.printStackTrace();//imprimo toda la traza del error en el servidor
        }
        return arrayDAOest;
    }
    // metodo para hacer reportes

    public ArrayList SeleccionarTodo() {
        //xona de objetos
        Estudiantes objDAOdatos = null; //declaro obj q trabaja con el DAO
        ArrayList<Estudiantes> arrayDAOdatos = new ArrayList<>(); // declaro array q va a recibir la consulta desde la base
        Statement stm;//interpreta sql desde java
        ResultSet resConsulta = null; // para recibir cada registro de la base
        String sql = "SELECT * FROM estudiantes;";
        try {
            conecta.connection(); //abrir conexion
            stm = conecta.getJdbcConnection().createStatement();
            resConsulta = stm.executeQuery(sql);
            while (resConsulta.next()) {//mientras haya datos en el resultset recoorrer
                objDAOdatos = new Estudiantes(resConsulta.getInt("IDESTUDIANTE"), resConsulta.getString("TIPOIDENTIFICACIONESTUDIANTE"), resConsulta.getString("NUMIDENTIFICACIONESTUDIANTE"), resConsulta.getString("PRIMERAPELLIDOESTUDIANTE"), resConsulta.getString("SEGUNDOAPELLIDOESTUDIANTE"), resConsulta.getString("PRIMERNOMBREESTUDIANTE"), resConsulta.getString("SEGUNDONOMBREESTUDIANTE"), resConsulta.getString("FECHANACIMIENTOESTUDIANTE"), resConsulta.getString("GENEROESTUDIANTE"), resConsulta.getString("ESTADOCIVILESTUDIANTE"), resConsulta.getString("ETNIAESTUDIANTE"), resConsulta.getString("PUEBLOESTUDIANTE"), resConsulta.getString("TIPOSANGREESTUDIANTE"), resConsulta.getString("TIENEDISCAPACIDAD"), resConsulta.getString("PORCENTAJEDISCAPACIDADESTUDIANTE"), resConsulta.getString("NUMCARNETESTUDIANTE"), resConsulta.getString("TIPODISCAPACIDAD"), resConsulta.getString("PROVINCIANACIMIENTOESTUDIANTE"), resConsulta.getString("CANTONNACIMIENTOESTUDIANTE"), resConsulta.getString("PROVINCIARESIDENCIAESTUDIANTE"), resConsulta.getString("CANTONRESIDENCIAESTUDIANTE"), resConsulta.getString("CORREOESTUDIANTE"), resConsulta.getString("NUMEROCELULARESTUDIANTE"), resConsulta.getString("NIVELFORMACIONPADREDEESTUDIANTE"), resConsulta.getString("NIVELFORMACIONMADREDEESTUDIANTE"), resConsulta.getString("INGRESOTOTALHOGARESTUDIANTE"), resConsulta.getString("NUMEROMIEMBROSHOGARESTUDIANTE"), resConsulta.getString("TIPOCOLEGIOESTUDIANTE"), resConsulta.getString("MODALIDADCARRERAESTUDIANTE"), resConsulta.getString("JORNADACARRERAESTUDIANTE"), resConsulta.getString("FECHAINICIOCARRERAESTUDIANTE"), resConsulta.getString("FECHAMATRICULAESTUDIANTE"), resConsulta.getString("TIPOMATRICULAESTUDIANTE"), resConsulta.getString("NIVELACADEMICOESTUDIANTE"), resConsulta.getString("SEMANASDURACIONPERIODOESTUDIANTE"), resConsulta.getString("REPETIDOMATERIAESTUDIANTE"), resConsulta.getString("CARRERAESTUDIANTE"), resConsulta.getString("PARALELOESTUDIANTE"), resConsulta.getString("PERDIDOGRATUIDADESTUDIANTE"), resConsulta.getString("POSEEPENSIONESTUDIANTE"), resConsulta.getString("ENCUENTRADEDICADOESTUDIANTE"), resConsulta.getString("EMPLEAINGRESOSESTUDIANTE"), resConsulta.getString("FAMILIARECIBEBONODESARROLLOHUMANOESTUDIANTE"), resConsulta.getString("REALIZADOPRACTICASESTUDIANTE"), resConsulta.getString("HORASPRACTICAREALIZOESTUDIANTE"), resConsulta.getString("TIPOINSTITUCIONREALIZAPRACTICASESTUDIANTE"), resConsulta.getString("SECTORECONOMICOPRACTICASESTUDIANTE"), resConsulta.getString("PARTICIPADOPROYECTODEVINCULACIONESTUDIANTE"), resConsulta.getString("ALCANCEPROYECTOVINCULACIONESTUDIANTE"), resConsulta.getString("COMPONENTEESTUDIANTE"), resConsulta.getString("REQUISITOSCOMPONENTEESTUDIANTE"));
                arrayDAOdatos.add(objDAOdatos);//agrego una fila al array con el registro extraido
            }
            stm.close();
            conecta.disconnect();

        } catch (SQLException e) {
            e.printStackTrace();//imprimo toda la traza del error en el servidor
        }
        return arrayDAOdatos;
    }

    public boolean Eliminar(Estudiantes objborr) {
        boolean estado = false;
        Statement stm;
        String sql = "delete from estudiantes where IDESTUDIANTE = " + objborr.getIDESTUDIANTE();
        try {
            conecta.connection();
            stm = conecta.getJdbcConnection().createStatement();
            stm.executeUpdate(sql);
            estado = true;
            stm.close();
            conecta.disconnect();
        } catch (SQLException e) {
            estado = false;
            e.printStackTrace();
        }
        return estado;
    }

    public boolean ActualizarTodo(Estudiantes objedi) {
        boolean estado = false;
        Statement stm;
        String sql = "update estudiantes set TIPOIDENTIFICACIONESTUDIANTE = '" + objedi.getTIPOIDENTIFICACIONESTUDIANTE() + "', NUMIDENTIFICACIONESTUDIANTE = '" + objedi.getNUMIDENTIFICACIONESTUDIANTE() + "', PRIMERAPELLIDOESTUDIANTE = '" + objedi.getPRIMERAPELLIDOESTUDIANTE() + "', SEGUNDOAPELLIDOESTUDIANTE='" + objedi.getSEGUNDOAPELLIDOESTUDIANTE() + "', PRIMERNOMBREESTUDIANTE='" + objedi.getPRIMERNOMBREESTUDIANTE() + "', SEGUNDONOMBREESTUDIANTE='" + objedi.getSEGUNDONOMBREESTUDIANTE() + "', FECHANACIMIENTOESTUDIANTE='" + objedi.getFECHANACIMIENTOESTUDIANTE() + "', GENEROESTUDIANTE='" + objedi.getGENEROESTUDIANTE() + "',"
                + " ESTADOCIVILESTUDIANTE='" + objedi.getESTADOCIVILESTUDIANTE() + "', ETNIAESTUDIANTE='" + objedi.getETNIAESTUDIANTE() + "', PUEBLOESTUDIANTE='" + objedi.getPUEBLOESTUDIANTE() + "', TIPOSANGREESTUDIANTE='" + objedi.getTIPOSANGREESTUDIANTE() + "', TIENEDISCAPACIDAD='" + objedi.getTIENEDISCAPACIDAD() + "', PORCENTAJEDISCAPACIDADESTUDIANTE='" + objedi.getPORCENTAJEDISCAPACIDADESTUDIANTE() + "', NUMCARNETESTUDIANTE='" + objedi.getNUMCARNETESTUDIANTE() + "', TIPODISCAPACIDAD='" + objedi.getTIPODISCAPACIDAD() + "', PROVINCIANACIMIENTOESTUDIANTE='" + objedi.getPROVINCIANACIMIENTOESTUDIANTE() + "',"
                + " CANTONNACIMIENTOESTUDIANTE='" + objedi.getCANTONNACIMIENTOESTUDIANTE() + "', PROVINCIARESIDENCIAESTUDIANTE='" + objedi.getPROVINCIARESIDENCIAESTUDIANTE() + "', CANTONRESIDENCIAESTUDIANTE='" + objedi.getCANTONRESIDENCIAESTUDIANTE() + "', CORREOESTUDIANTE='" + objedi.getCORREOESTUDIANTE() + "', NUMEROCELULARESTUDIANTE='" + objedi.getNUMEROCELULARESTUDIANTE() + "', NIVELFORMACIONPADREDEESTUDIANTE='" + objedi.getNIVELFORMACIONPADREDEESTUDIANTE() + "', NIVELFORMACIONMADREDEESTUDIANTE='" + objedi.getNIVELFORMACIONMADREDEESTUDIANTE() + "', INGRESOTOTALHOGARESTUDIANTE='" + objedi.getINGRESOTOTALHOGARESTUDIANTE() + "', "
                + "NUMEROMIEMBROSHOGARESTUDIANTE='" + objedi.getNUMEROMIEMBROSHOGARESTUDIANTE() + "', TIPOCOLEGIOESTUDIANTE='" + objedi.getTIPOCOLEGIOESTUDIANTE() + "', MODALIDADCARRERAESTUDIANTE='" + objedi.getMODALIDADCARRERAESTUDIANTE() + "', JORNADACARRERAESTUDIANTE='" + objedi.getJORNADACARRERAESTUDIANTE() + "', FECHAINICIOCARRERAESTUDIANTE='" + objedi.getFECHAINICIOCARRERAESTUDIANTE() + "', FECHAMATRICULAESTUDIANTE='" + objedi.getFECHAMATRICULAESTUDIANTE() + "', TIPOMATRICULAESTUDIANTE='" + objedi.getTIPOMATRICULAESTUDIANTE() + "', NIVELACADEMICOESTUDIANTE='" + objedi.getNIVELACADEMICOESTUDIANTE() + "', SEMANASDURACIONPERIODOESTUDIANTE='" + objedi.getSEMANASDURACIONPERIODOESTUDIANTE() + "',REPETIDOMATERIAESTUDIANTE='" + objedi.getREPETIDOMATERIAESTUDIANTE() + "', CARRERAESTUDIANTE='" + objedi.getCARRERAESTUDIANTE() + "', PARALELOESTUDIANTE='" + objedi.getPARALELOESTUDIANTE() + "', PERDIDOGRATUIDADESTUDIANTE='" + objedi.getPERDIDOGRATUIDADESTUDIANTE() + "', POSEEPENSIONESTUDIANTE='" + objedi.getPOSEEPENSIONESTUDIANTE() + "', ENCUENTRADEDICADOESTUDIANTE='" + objedi.getENCUENTRADEDICADOESTUDIANTE() + "', EMPLEAINGRESOSESTUDIANTE='" + objedi.getEMPLEAINGRESOSESTUDIANTE() + "', FAMILIARECIBEBONODESARROLLOHUMANOESTUDIANTE='" + objedi.getFAMILIARECIBEBONODESARROLLOHUMANOESTUDIANTE() + "', REALIZADOPRACTICASESTUDIANTE='" + objedi.getREALIZADOPRACTICASESTUDIANTE() + "', HORASPRACTICAREALIZOESTUDIANTE='" + objedi.getHORASPRACTICAREALIZOESTUDIANTE() + "', TIPOINSTITUCIONREALIZAPRACTICASESTUDIANTE='" + objedi.getTIPOINSTITUCIONREALIZAPRACTICASESTUDIANTE() + "', SECTORECONOMICOPRACTICASESTUDIANTE='" + objedi.getSECTORECONOMICOPRACTICASESTUDIANTE() + "', PARTICIPADOPROYECTODEVINCULACIONESTUDIANTE='" + objedi.getPARTICIPADOPROYECTODEVINCULACIONESTUDIANTE() + "', ALCANCEPROYECTOVINCULACIONESTUDIANTE='" + objedi.getALCANCEPROYECTOVINCULACIONESTUDIANTE() + "', COMPONENTEESTUDIANTE='" + objedi.getCOMPONENTEESTUDIANTE() + "', REQUISITOSCOMPONENTEESTUDIANTE='" + objedi.getREQUISITOSCOMPONENTEESTUDIANTE() + "'  where IDESTUDIANTE = " + objedi.getIDESTUDIANTE();
        try {
            conecta.connection();
            stm = conecta.getJdbcConnection().createStatement();
            stm.executeUpdate(sql);
            estado = true;
            stm.close();
            conecta.disconnect();
        } catch (SQLException e) {
            estado = false;
            e.printStackTrace();
        }
        return estado;

    }
    
     public ArrayList buscarId(int id) {
        Estudiantes objEst = null;
        ArrayList<Estudiantes> arrayDAOest = new ArrayList<>();
        Statement stm;
        ResultSet resConsulta = null; // para recibir cada registro de la base
        String sql = "select * from estudiantes where IDESTUDIANTE=" + id;
        try {
            conecta.connection();
            stm = conecta.getJdbcConnection().createStatement();
            resConsulta = stm.executeQuery(sql);
            while (resConsulta.next()) {
                objEst = new Estudiantes(resConsulta.getInt("IDESTUDIANTE"), resConsulta.getString("TIPOIDENTIFICACIONESTUDIANTE"), resConsulta.getString("NUMIDENTIFICACIONESTUDIANTE"), resConsulta.getString("PRIMERAPELLIDOESTUDIANTE"), resConsulta.getString("SEGUNDOAPELLIDOESTUDIANTE"), resConsulta.getString("PRIMERNOMBREESTUDIANTE"), resConsulta.getString("SEGUNDONOMBREESTUDIANTE"), resConsulta.getString("FECHANACIMIENTOESTUDIANTE"), resConsulta.getString("GENEROESTUDIANTE"), resConsulta.getString("ESTADOCIVILESTUDIANTE"), resConsulta.getString("ETNIAESTUDIANTE"), resConsulta.getString("PUEBLOESTUDIANTE"), resConsulta.getString("TIPOSANGREESTUDIANTE"), resConsulta.getString("TIENEDISCAPACIDAD"), resConsulta.getString("PORCENTAJEDISCAPACIDADESTUDIANTE"), resConsulta.getString("NUMCARNETESTUDIANTE"), resConsulta.getString("TIPODISCAPACIDAD"), resConsulta.getString("PROVINCIANACIMIENTOESTUDIANTE"), resConsulta.getString("CANTONNACIMIENTOESTUDIANTE"), resConsulta.getString("PROVINCIARESIDENCIAESTUDIANTE"), resConsulta.getString("CANTONRESIDENCIAESTUDIANTE"), resConsulta.getString("CORREOESTUDIANTE"), resConsulta.getString("NUMEROCELULARESTUDIANTE"), resConsulta.getString("NIVELFORMACIONPADREDEESTUDIANTE"), resConsulta.getString("NIVELFORMACIONMADREDEESTUDIANTE"), resConsulta.getString("INGRESOTOTALHOGARESTUDIANTE"), resConsulta.getString("NUMEROMIEMBROSHOGARESTUDIANTE"), resConsulta.getString("TIPOCOLEGIOESTUDIANTE"), resConsulta.getString("MODALIDADCARRERAESTUDIANTE"), resConsulta.getString("JORNADACARRERAESTUDIANTE"), resConsulta.getString("FECHAINICIOCARRERAESTUDIANTE"), resConsulta.getString("FECHAMATRICULAESTUDIANTE"), resConsulta.getString("TIPOMATRICULAESTUDIANTE"), resConsulta.getString("NIVELACADEMICOESTUDIANTE"), resConsulta.getString("SEMANASDURACIONPERIODOESTUDIANTE"), resConsulta.getString("REPETIDOMATERIAESTUDIANTE"), resConsulta.getString("CARRERAESTUDIANTE"), resConsulta.getString("PARALELOESTUDIANTE"), resConsulta.getString("PERDIDOGRATUIDADESTUDIANTE"), resConsulta.getString("POSEEPENSIONESTUDIANTE"), resConsulta.getString("ENCUENTRADEDICADOESTUDIANTE"), resConsulta.getString("EMPLEAINGRESOSESTUDIANTE"), resConsulta.getString("FAMILIARECIBEBONODESARROLLOHUMANOESTUDIANTE"), resConsulta.getString("REALIZADOPRACTICASESTUDIANTE"), resConsulta.getString("HORASPRACTICAREALIZOESTUDIANTE"), resConsulta.getString("TIPOINSTITUCIONREALIZAPRACTICASESTUDIANTE"), resConsulta.getString("SECTORECONOMICOPRACTICASESTUDIANTE"), resConsulta.getString("PARTICIPADOPROYECTODEVINCULACIONESTUDIANTE"), resConsulta.getString("ALCANCEPROYECTOVINCULACIONESTUDIANTE"), resConsulta.getString("COMPONENTEESTUDIANTE"), resConsulta.getString("REQUISITOSCOMPONENTEESTUDIANTE"));
                arrayDAOest.add(objEst);//agrego una fila al array con el registro extraido
            }
            stm.close();
            conecta.disconnect();
        } catch (SQLException e) {
            e.printStackTrace();//imprimo toda la traza del error en el servidor
        }
        return arrayDAOest;
    }
}
