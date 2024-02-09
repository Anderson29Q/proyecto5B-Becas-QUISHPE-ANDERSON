/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;


import javax.servlet.http.HttpSession;

/**
 *
 * @author Pato
 */
public class Procesar {

    private String usuario;
    private String psw;
    private static final int nIntentos = 4;

    public Procesar(String usuario, String psw) {
        this.usuario = usuario;
        this.psw = psw;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPsw() {
        return psw;
    }

    public void setPsw(String psw) {
        this.psw = psw;
    }

    // En la clase Procesar
    public String Validar(HttpSession session) {
        Integer intentos = (Integer) session.getAttribute("intentos");
        

        if (intentos == null) {
            intentos = 0;
        }

        if (usuario.equals("admin@gmail.com") && psw.equals("1234")) {
            intentos = 0;
            session.setAttribute("intentos", intentos);
            return "exitoso";
        } else {
            intentos++;
            session.setAttribute("intentos", intentos);

            if (intentos < nIntentos) {
                return "restar:" + (nIntentos - intentos);
            } else {
                return "bloqueado";
            }
        }
    }
    

   

}
