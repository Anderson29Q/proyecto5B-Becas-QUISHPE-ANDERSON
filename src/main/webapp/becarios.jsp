<%-- 
    Document   : datos-estudiantes
    Created on : 03-dic-2023, 13:40:31
    Author     : Pato
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Estudiantes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html style="height: auto;" lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>SAGBI | Solicitud de Becas</title>


        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&amp;display=fallback">

        <link rel="stylesheet" href="https://adminlte.io/themes/v3/plugins/fontawesome-free/css/all.min.css">

        <link rel="stylesheet" href="https://adminlte.io/themes/v3/dist/css/adminlte.min.css?v=3.2.0">
        <script defer="" referrerpolicy="origin" src="https://adminlte.io/cdn-cgi/zaraz/s.js?z=JTdCJTIyZXhlY3V0ZWQlMjIlM0ElNUIlNUQlMkMlMjJ0JTIyJTNBJTIyQWRtaW5MVEUlMjAzJTIwJTdDJTIwSW52b2ljZSUyMiUyQyUyMnglMjIlM0EwLjQ5MzQ1MDYzOTIzNzQzMDkzJTJDJTIydyUyMiUzQTc0MSUyQyUyMmglMjIlM0E1NzIlMkMlMjJqJTIyJTNBNTY2JTJDJTIyZSUyMiUzQTczNCUyQyUyMmwlMjIlM0ElMjJodHRwcyUzQSUyRiUyRmFkbWlubHRlLmlvJTJGdGhlbWVzJTJGdjMlMkZwYWdlcyUyRmV4YW1wbGVzJTJGaW52b2ljZS5odG1sJTIyJTJDJTIyciUyMiUzQSUyMmh0dHBzJTNBJTJGJTJGYWRtaW5sdGUuaW8lMkZ0aGVtZXMlMkZ2MyUyRmluZGV4My5odG1sJTIyJTJDJTIyayUyMiUzQTI0JTJDJTIybiUyMiUzQSUyMlVURi04JTIyJTJDJTIybyUyMiUzQTMwMCUyQyUyMnElMjIlM0ElNUIlNUQlN0Q="></script><script nonce="5e2d77a4-9548-4c3a-86dd-adaf93b02d13">(function(w, d){!function(dp, dq, dr, ds){dp[dr] = dp[dr] || {}; dp[dr].executed = []; dp.zaraz = {deferred:[], listeners:[]}; dp.zaraz.q = []; dp.zaraz._f = function(dt){return async function(){var du = Array.prototype.slice.call(arguments); dp.zaraz.q.push({m:dt, a:du})}}; for (const dv of["track", "set", "debug"])dp.zaraz[dv] = dp.zaraz._f(dv); dp.zaraz.init = () => {var dw = dq.getElementsByTagName(ds)[0], dx = dq.createElement(ds), dy = dq.getElementsByTagName("title")[0]; dy && (dp[dr].t = dq.getElementsByTagName("title")[0].text); dp[dr].x = Math.random(); dp[dr].w = dp.screen.width; dp[dr].h = dp.screen.height; dp[dr].j = dp.innerHeight; dp[dr].e = dp.innerWidth; dp[dr].l = dp.location.href; dp[dr].r = dq.referrer; dp[dr].k = dp.screen.colorDepth; dp[dr].n = dq.characterSet; dp[dr].o = (new Date).getTimezoneOffset(); if (dp.dataLayer)for (const dC of Object.entries(Object.entries(dataLayer).reduce(((dD, dE) => ({...dD[1], ...dE[1]})), {})))zaraz.set(dC[0], dC[1], {scope:"page"}); dp[dr].q = []; for (; dp.zaraz.q.length; ){const dF = dp.zaraz.q.shift(); dp[dr].q.push(dF)}dx.defer = !0; for (const dG of[localStorage, sessionStorage])Object.keys(dG || {}).filter((dI => dI.startsWith("_zaraz_"))).forEach((dH => {try{dp[dr]["z_" + dH.slice(7)] = JSON.parse(dG.getItem(dH))} catch {dp[dr]["z_" + dH.slice(7)] = dG.getItem(dH)}})); dx.referrerPolicy = "origin"; dx.src = "/cdn-cgi/zaraz/s.js?z=" + btoa(encodeURIComponent(JSON.stringify(dp[dr]))); dw.parentNode.insertBefore(dx, dw)}; ["complete", "interactive"].includes(dq.readyState)?zaraz.init():dp.addEventListener("DOMContentLoaded", zaraz.init)}(w, d, "zarazData", "script"); })(window, document);</script>
    </head>

    <body class="dark-mode sidebar-mini sidebar-closed sidebar-collapse" style="height: auto;">
        <div class="wrapper">

            <aside class="main-sidebar sidebar-dark-primary elevation-4">

                <a href="inicio.jsp" class="brand-link">
                    <img data-cfsrc="../../dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" data-cfstyle="opacity: .8" style="opacity: .8" src="https://adminlte.io/themes/v3/dist/img/AdminLTELogo.png">
                    <span class="brand-text font-weight-light">SAGBI</span>
                </a>

                <div class="sidebar">

                    <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                        <div class="image">
                            <img src="img/QUISHPE_ANDERSON.jpg" class="img-circle elevation-2" alt=""/>
                        </div>
                        <div class="info">
                            <a href="#" class="d-block">Anderson Quishpe</a>
                        </div>
                    </div>


                    <nav class="mt-2">
                        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">

                            <li class="nav-item">
                                <a href="inicio.jsp" class="nav-link">
                                    <i class="nav-icon fas fa-home"></i>
                                    <p>
                                        Inicio
                                        <!-- <span class="right badge badge-danger">New</span>-->

                                    </p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="datos-estudiantes.jsp" class="nav-link">
                                    <i class="nav-icon fas fa-pen"></i>
                                    <p>
                                        Datos de los Estudiantes
                                        <!-- <span class="right badge badge-danger">New</span>-->
                                    </p>
                                </a>
                            </li>
                            <li class="nav-item menu-open">
                                <a href="#" class="nav-link active">
                                    <i class="nav-icon fas fa-award"></i>
                                    <p>
                                        Becas
                                        <i class="right fas fa-angle-left"></i>
                                    </p>
                                </a>
                                <ul class="nav nav-treeview">
                                    <li class="nav-item">
                                        <a href="becarios.jsp" class="nav-link active">
                                            <i class="nav-icon fas fa-signature"></i>
                                            <p>
                                                Solicitud de Becas
                                                <!-- <span class="right badge badge-danger">New</span>-->
                                            </p>
                                        </a>
                                    </li>

                                    <li class="nav-item">
                                        <a href="reportes.jsp" class="nav-link">
                                            <i class="nav-icon fas fa-check"></i>
                                            <p>
                                                Becas Aprobadas
                                                <!-- <span class="right badge badge-danger">New</span>-->
                                            </p>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item">
                                <a href="usuarios.jsp" class="nav-link">
                                    <i class="nav-icon fas fa-users"></i>
                                    <p>
                                        Estudiantes que aprobaron las becas
                                        <!-- <span class="right badge badge-danger">New</span>-->
                                    </p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="index.jsp" class="nav-link">
                                    <i class="nav-icon fas fa-sign-out-alt"></i>
                                    <p>
                                        Cerrar Sesión
                                        <!-- <span class="right badge badge-danger">New</span>-->
                                    </p>
                                </a>
                            </li>
                            <li class="nav-item">
                            <center>
                                <a class="nav-link" data-widget="pushmenu" href="#" role="button" style="width: 30px;">
                                    <i class="fa fa-bars"></i>
                                </a>
                            </center>
                            </li>
                        </ul>
                    </nav>
                </div>
            </aside>

            <div class="content-wrapper" style="min-height: 2646.44px;">

                <div class="container">


                    <div class="col-md-offset-1 col-md-15">
                        <form action="servletReportes" method="POST">
                            <div class="panel">

                                <br>
                                <div class="container mt-20">
                                    <div class="card text-center border-dark">
                                        <div class="card-header text-white">
                                            <h2>Solicitud de Estudiantes</h2>
                                        </div>
                                    </div>
                                </div>
                                <div class="container">

                                    <!-- Botón de Cargar los datos -->
                                    <button name="acc" value="cargar" type="submit" class="btn btn-info mx-3">
                                        <i class="fas fa-spinner mx-1"></i> Cargar Datos
                                    </button>

                                    <!-- Espacio para buscar -->
                                    <input name="buscarCedula" type="number" class="ml-5 w-50" style="    border-radius: 5px; /* Ajusta según sea necesario para redondear los bordes */
                                           background-color: #343a40; /* Color de fondo oscuro */
                                           color: #ffffff; /* Color del texto en claro */
                                           padding: 8px; /* Ajusta según sea necesario para el espacio interno */
                                           border: none; /* Elimina el borde predeterminado */" placeholder="Buscar por número de identificación" id="inputapellido">

                                    <button name="acc" value="buscar" type="submit" class="btn btn-dark">
                                        <i class="fas fa-search mx-1"></i> Buscar
                                    </button>

                                </div>
                                <br>
                                <div class="panel-body table-responsive" >
                                    <div class="panel-body table-responsive">
                                        <table class="table table-bordered">
                                            <thead class="bg-dark">
                                                <tr>
                                                    <th>1. Tipo de Identificacion</th>
                                                    <th>2. Número de Identificacion</th>
                                                    <th>3. Primer Apellido</th>
                                                    <th>4. Segundo Apellido</th>
                                                    <th>5. Primer Nombre</th>
                                                    <th>6. Segundo Nombre</th>
                                                    <th>7. Fecha de Nacimiento</th>
                                                    <th>8. Género del Estudiante</th>
                                                    <th>9. Estado Civil</th>
                                                    <th>10. Etnia</th>
                                                    <th>11. Pueblo</th>
                                                    <th>12. Tipo de sangre</th>
                                                    <th>13. Tiene Discapacidad</th>
                                                    <th>14. Porcentaje de Discapacidad</th>
                                                    <th>15. Nro. de Carnet</th>
                                                    <th>16. Tipo de Discapacidad</th>

                                                    <th>17. Provincia de Nacimiento</th>
                                                    <th>18. Cantón de Nacimiento</th>
                                                    <th>19. Provincia de Residencia</th>
                                                    <th>20. Cantón de Residencia</th>
                                                    <th>21. Correo Electrónico</th>
                                                    <th>22. Número de celular</th>
                                                    <th>23. Nivel de Formación del Padre</th>
                                                    <th>24. Nivel de Formación de la Madre</th>
                                                    <th>25. Ingreso Total en el hogar</th>
                                                    <th>26. Número de miembros en el hogar</th>

                                                    <th>27. Tipo de Colegio</th>
                                                    <th>28. Modalidad de carrera</th>
                                                    <th>29. Jornada de la Carrera</th>
                                                    <th>30. Fecha en la que inició el estudiante la carrera</th>
                                                    <th>31. Fecha de matrícula</th>
                                                    <th>32. Tipo de matrícula</th>
                                                    <th>33. Nivel académico</th>
                                                    <th>34. Número de semanas de duración del período académico</th>
                                                    <th>35. Ha repetido al menos una materia</th>
                                                    <th>36. Carrera</th>
                                                    <th>37. Paralelo</th>
                                                    <th>38. Ha perdido la gratuidad</th>
                                                    <th>39. Posee pensión diferenciada</th>
                                                    <th>40. El estudiante se encuentra dedicado a</th>
                                                    <th>41. El estudiante para qué emplea sus ingresos</th>
                                                    <th>42. La familia del estudiante recibe el bono de desarrollo humano</th>
                                                    <th>43. El estudiante ha realizado prácticas pre profesionales</th>
                                                    <th>44. Horas de la última práctica pre profesional que realizó el estudiante</th>
                                                    <th>45. Tipo de institución en el que realiza las prácticas pre profesionales</th>
                                                    <th>46. Sector económico en el que realizó las prácticas pre profesionales</th>
                                                    <th>47. Ha participado durante el periodo de un proyecto de vinculación social</th>
                                                    <th>48. Alcance del proyecto de vinculación con la sociedad</th>
                                                    <th>Nombre de Componente</th>
                                                    <th>Acciones</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                    ArrayList<Estudiantes> listaOperaciones = (ArrayList<Estudiantes>) request.getAttribute("cajitaReporte");
                                                    ArrayList<Estudiantes> mostrarUno = (ArrayList<Estudiantes>) request.getAttribute("cajitaReporteUno");

                                                    if (listaOperaciones != null && mostrarUno != null) {
                                                        // Combina ambas listas antes del bucle
                                                        listaOperaciones.addAll(mostrarUno);

                                                        for (Estudiantes operacion : listaOperaciones) {
                                                %>
                                                <!-- Aquí puedes generar las filas de la tabla con datos -->
                                                <%-- Ejemplo de fila con datos ficticios --%>
                                                <tr>
                                                    <td><%= operacion.getTIPOIDENTIFICACIONESTUDIANTE()%></td>
                                                    <td><%= operacion.getNUMIDENTIFICACIONESTUDIANTE()%></td>
                                                    <td><%= operacion.getPRIMERAPELLIDOESTUDIANTE()%></td>
                                                    <td><%= operacion.getSEGUNDOAPELLIDOESTUDIANTE()%></td>
                                                    <td><%= operacion.getPRIMERNOMBREESTUDIANTE()%></td>
                                                    <td><%= operacion.getSEGUNDONOMBREESTUDIANTE()%></td>
                                                    <td><%= operacion.getFECHANACIMIENTOESTUDIANTE()%></td>
                                                    <td><%= operacion.getGENEROESTUDIANTE()%></td>
                                                    <td><%= operacion.getESTADOCIVILESTUDIANTE()%></td>
                                                    <td><%= operacion.getETNIAESTUDIANTE()%></td>
                                                    <td><%= operacion.getPUEBLOESTUDIANTE()%></td>
                                                    <td><%= operacion.getTIPOSANGREESTUDIANTE()%></td>
                                                    <td><%= operacion.getTIENEDISCAPACIDAD()%></td>
                                                    <td><%= operacion.getPORCENTAJEDISCAPACIDADESTUDIANTE()%></td>
                                                    <td><%= operacion.getNUMCARNETESTUDIANTE()%></td>
                                                    <td><%= operacion.getTIPODISCAPACIDAD()%></td>
                                                    <td><%= operacion.getPROVINCIANACIMIENTOESTUDIANTE()%></td>
                                                    <td><%= operacion.getCANTONNACIMIENTOESTUDIANTE()%></td>
                                                    <td><%= operacion.getPROVINCIARESIDENCIAESTUDIANTE()%></td>
                                                    <td><%= operacion.getCANTONRESIDENCIAESTUDIANTE()%></td>
                                                    <td><%= operacion.getCORREOESTUDIANTE()%></td>
                                                    <td><%= operacion.getNUMEROCELULARESTUDIANTE()%></td>
                                                    <td><%= operacion.getNIVELFORMACIONPADREDEESTUDIANTE()%></td>
                                                    <td><%= operacion.getNIVELFORMACIONMADREDEESTUDIANTE()%></td>
                                                    <td><%= operacion.getINGRESOTOTALHOGARESTUDIANTE()%></td>
                                                    <td><%= operacion.getNUMEROMIEMBROSHOGARESTUDIANTE()%></td>
                                                    <td><%= operacion.getTIPOCOLEGIOESTUDIANTE()%></td>
                                                    <td><%= operacion.getMODALIDADCARRERAESTUDIANTE()%></td>
                                                    <td><%= operacion.getJORNADACARRERAESTUDIANTE()%></td>
                                                    <td><%= operacion.getFECHAINICIOCARRERAESTUDIANTE()%></td>
                                                    <td><%= operacion.getFECHAMATRICULAESTUDIANTE()%></td>
                                                    <td><%= operacion.getTIPOMATRICULAESTUDIANTE()%></td>
                                                    <td><%= operacion.getNIVELACADEMICOESTUDIANTE()%></td>
                                                    <td><%= operacion.getSEMANASDURACIONPERIODOESTUDIANTE()%></td>
                                                    <td><%= operacion.getREPETIDOMATERIAESTUDIANTE()%></td>
                                                    <td><%= operacion.getCARRERAESTUDIANTE()%></td>
                                                    <td><%= operacion.getPARALELOESTUDIANTE()%></td>
                                                    <td><%= operacion.getPERDIDOGRATUIDADESTUDIANTE()%></td>
                                                    <td><%= operacion.getPOSEEPENSIONESTUDIANTE()%></td>
                                                    <td><%= operacion.getENCUENTRADEDICADOESTUDIANTE()%></td>
                                                    <td><%= operacion.getEMPLEAINGRESOSESTUDIANTE()%></td>
                                                    <td><%= operacion.getFAMILIARECIBEBONODESARROLLOHUMANOESTUDIANTE()%></td>
                                                    <td><%= operacion.getREALIZADOPRACTICASESTUDIANTE()%></td>
                                                    <td><%= operacion.getHORASPRACTICAREALIZOESTUDIANTE()%></td>
                                                    <td><%= operacion.getTIPOINSTITUCIONREALIZAPRACTICASESTUDIANTE()%></td>
                                                    <td><%= operacion.getSECTORECONOMICOPRACTICASESTUDIANTE()%></td>
                                                    <td><%= operacion.getPARTICIPADOPROYECTODEVINCULACIONESTUDIANTE()%></td>
                                                    <td><%= operacion.getALCANCEPROYECTOVINCULACIONESTUDIANTE()%></td>
                                                    <td><%= operacion.getCOMPONENTEESTUDIANTE()%></td>
                                                    <td>
                                                        <a href="editEstudiantes.jsp?IDESTUDIANTE=<%= operacion.getIDESTUDIANTE()%>" class=" btn btn-warning btn-sm  mb-2"> <i class="fas fa-edit"></i> Editar</a> 

                                                        <form method="POST" action="servletReportes">
                                                            <input type="hidden" name="idEst" value="<%= operacion.getIDESTUDIANTE()%>">
                                                            <button type="submit" class="btn btn-danger btn-sm" value="eliminar" name="acc">
                                                                <i class="fas fa-trash"></i>Eliminar
                                                            </button>
                                                        </form>
                                                    </td>



                                                    <!-- Continúa con el resto de las celdas -->
                                                </tr>

                                                <%   }
                                                    }
                                                %>
                                                <!-- Continúa agregando más filas según los datos que tengas -->
                                            </tbody>
                                        </table>
                                    </div>
                                </div>


                            </div>
                        </form>
                    </div>

                </div>
            </div>
            <footer class="main-footer no-print">
                <strong>Copyright © 2024 <a href="#">SAGBI</a>.</strong>
            </footer>
        </div>


        <script src="https://adminlte.io/themes/v3/plugins/jquery/jquery.min.js"></script>

        <script src="https://adminlte.io/themes/v3/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

        <script src="https://adminlte.io/themes/v3/dist/js/adminlte.min.js?v=3.2.0"></script>



        <!-- Script para cambiar dinámicamente el ícono del menú -->
        <script>
            $(document).ready(function () {
            // Agrega un evento clic al enlace del menú
            $(".nav-link[data-widget='pushmenu']").click(function () {
            // Alterna la clase 'menu-open' en el body para determinar si el menú está abierto
            $("body").toggleClass("menu-open");
            // Cambia dinámicamente el ícono en función del estado del menú
            var isOpen = $("body").hasClass("menu-open");
            var icon = isOpen ? "fas fa-times" : "fas fa-bars";
            // Actualiza el ícono del enlace del menú
            $(this).html('<i class="' + icon + '"></i>');
            });
            });
        </script>

    </body>
</html>