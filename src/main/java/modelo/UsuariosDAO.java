/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.*;

/**
 *
 * @author Pato
 */
public class UsuariosDAO {

    private ConexionBase conecta;
    private int intentosRestantes = 3;

    public UsuariosDAO(String jdbcURL, String jdbcUSERName, String jdbcPassword) throws SQLException {
        conecta = new ConexionBase(jdbcURL, jdbcUSERName, jdbcPassword);
    }

    // metodo para insertar en la base de datos
    public boolean registrar(Usuarios objusu) {

        boolean estado = false;//variable para insertar la inserccion de datos  
        Statement stm; //interpreta cod SQL desde JAVA
        String sql = "CALL InsertarUsuarios(null, '" + objusu.getCorreoUsuario() + "', '" + objusu.getPassUsuario() + "', '" + objusu.getNombreUsuario() + "', '" + objusu.getApellidoUsuario() + "');";

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

    public boolean iniciar(String correoUsuario, String passUsuario) {
        boolean estado = false; // variable para indicar si hay coincidencias
        Statement stm;
        ResultSet resConsulta = null;
        String sql = "select * from usuarios where CORREOUSUARIO = '" + correoUsuario + "' and PASSUSUARIO = '" + passUsuario + "';";

        try {
            conecta.connection();
            stm = conecta.getJdbcConnection().createStatement();
            resConsulta = stm.executeQuery(sql);

            if (resConsulta.next()) {
                estado = true; // Hay al menos una coincidencia
                getIntentosRestantes();
            } else {
                decrementarIntentos();
            }

            stm.close();
            conecta.disconnect();

        } catch (SQLException e) {
            estado = false;
            e.printStackTrace();
        }
        return estado;
    }

    public int getIntentosRestantes() {
        return intentosRestantes;
    }

    private void decrementarIntentos() {
        intentosRestantes--;
    }

}
