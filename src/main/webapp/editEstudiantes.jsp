<%-- 
    Document   : datos-estudiantes
    Created on : 03-dic-2023, 13:40:31
    Author     : Pato
--%>
<%@page import="modelo.Estudiantes"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="height: auto;" lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>SAGBI | Editar Datos</title>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="bootstrap/js/bootstrap.js" type="text/javascript"></script>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&amp;display=fallback">

        <link rel="stylesheet" href="https://adminlte.io/themes/v3/plugins/fontawesome-free/css/all.min.css">
        <link rel="stylesheet" href="https://adminlte.io/themes/v3/plugins/daterangepicker/daterangepicker.css">

        <link rel="stylesheet" href="https://adminlte.io/themes/v3/dist/css/adminlte.min.css?v=3.2.0">
        <link rel="stylesheet" href="https://adminlte.io/themes/v3/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">



        <script defer="" referrerpolicy="origin" src="https://adminlte.io/cdn-cgi/zaraz/s.js?z=JTdCJTIyZXhlY3V0ZWQlMjIlM0ElNUIlNUQlMkMlMjJ0JTIyJTNBJTIyQWRtaW5MVEUlMjAzJTIwJTdDJTIwSW52b2ljZSUyMiUyQyUyMnglMjIlM0EwLjQ5MzQ1MDYzOTIzNzQzMDkzJTJDJTIydyUyMiUzQTc0MSUyQyUyMmglMjIlM0E1NzIlMkMlMjJqJTIyJTNBNTY2JTJDJTIyZSUyMiUzQTczNCUyQyUyMmwlMjIlM0ElMjJodHRwcyUzQSUyRiUyRmFkbWlubHRlLmlvJTJGdGhlbWVzJTJGdjMlMkZwYWdlcyUyRmV4YW1wbGVzJTJGaW52b2ljZS5odG1sJTIyJTJDJTIyciUyMiUzQSUyMmh0dHBzJTNBJTJGJTJGYWRtaW5sdGUuaW8lMkZ0aGVtZXMlMkZ2MyUyRmluZGV4My5odG1sJTIyJTJDJTIyayUyMiUzQTI0JTJDJTIybiUyMiUzQSUyMlVURi04JTIyJTJDJTIybyUyMiUzQTMwMCUyQyUyMnElMjIlM0ElNUIlNUQlN0Q="></script><script nonce="5e2d77a4-9548-4c3a-86dd-adaf93b02d13">(function(w, d){!function(dp, dq, dr, ds){dp[dr] = dp[dr] || {}; dp[dr].executed = []; dp.zaraz = {deferred:[], listeners:[]}; dp.zaraz.q = []; dp.zaraz._f = function(dt){return async function(){var du = Array.prototype.slice.call(arguments); dp.zaraz.q.push({m:dt, a:du})}}; for (const dv of["track", "set", "debug"])dp.zaraz[dv] = dp.zaraz._f(dv); dp.zaraz.init = () => {var dw = dq.getElementsByTagName(ds)[0], dx = dq.createElement(ds), dy = dq.getElementsByTagName("title")[0]; dy && (dp[dr].t = dq.getElementsByTagName("title")[0].text); dp[dr].x = Math.random(); dp[dr].w = dp.screen.width; dp[dr].h = dp.screen.height; dp[dr].j = dp.innerHeight; dp[dr].e = dp.innerWidth; dp[dr].l = dp.location.href; dp[dr].r = dq.referrer; dp[dr].k = dp.screen.colorDepth; dp[dr].n = dq.characterSet; dp[dr].o = (new Date).getTimezoneOffset(); if (dp.dataLayer)for (const dC of Object.entries(Object.entries(dataLayer).reduce(((dD, dE) => ({...dD[1], ...dE[1]})), {})))zaraz.set(dC[0], dC[1], {scope:"page"}); dp[dr].q = []; for (; dp.zaraz.q.length; ){const dF = dp.zaraz.q.shift(); dp[dr].q.push(dF)}dx.defer = !0; for (const dG of[localStorage, sessionStorage])Object.keys(dG || {}).filter((dI => dI.startsWith("_zaraz_"))).forEach((dH => {try{dp[dr]["z_" + dH.slice(7)] = JSON.parse(dG.getItem(dH))} catch {dp[dr]["z_" + dH.slice(7)] = dG.getItem(dH)}})); dx.referrerPolicy = "origin"; dx.src = "/cdn-cgi/zaraz/s.js?z=" + btoa(encodeURIComponent(JSON.stringify(dp[dr]))); dw.parentNode.insertBefore(dx, dw)}; ["complete", "interactive"].includes(dq.readyState)?zaraz.init():dp.addEventListener("DOMContentLoaded", zaraz.init)}(w, d, "zarazData", "script"); })(window, document);</script>
        <script nonce="d8230786-3b26-4958-9dce-b0e1cc4e5294">(function(w, d){!function(dp, dq, dr, ds){dp[dr] = dp[dr] || {}; dp[dr].executed = []; dp.zaraz = {deferred:[], listeners:[]}; dp.zaraz.q = []; dp.zaraz._f = function(dt){return async function(){var du = Array.prototype.slice.call(arguments); dp.zaraz.q.push({m:dt, a:du})}}; for (const dv of["track", "set", "debug"])dp.zaraz[dv] = dp.zaraz._f(dv); dp.zaraz.init = () => {var dw = dq.getElementsByTagName(ds)[0], dx = dq.createElement(ds), dy = dq.getElementsByTagName("title")[0]; dy && (dp[dr].t = dq.getElementsByTagName("title")[0].text); dp[dr].x = Math.random(); dp[dr].w = dp.screen.width; dp[dr].h = dp.screen.height; dp[dr].j = dp.innerHeight; dp[dr].e = dp.innerWidth; dp[dr].l = dp.location.href; dp[dr].r = dq.referrer; dp[dr].k = dp.screen.colorDepth; dp[dr].n = dq.characterSet; dp[dr].o = (new Date).getTimezoneOffset(); if (dp.dataLayer)for (const dC of Object.entries(Object.entries(dataLayer).reduce(((dD, dE) => ({...dD[1], ...dE[1]})), {})))zaraz.set(dC[0], dC[1], {scope:"page"}); dp[dr].q = []; for (; dp.zaraz.q.length; ){const dF = dp.zaraz.q.shift(); dp[dr].q.push(dF)}dx.defer = !0; for (const dG of[localStorage, sessionStorage])Object.keys(dG || {}).filter((dI => dI.startsWith("_zaraz_"))).forEach((dH => {try{dp[dr]["z_" + dH.slice(7)] = JSON.parse(dG.getItem(dH))} catch {dp[dr]["z_" + dH.slice(7)] = dG.getItem(dH)}})); dx.referrerPolicy = "origin"; dx.src = "/cdn-cgi/zaraz/s.js?z=" + btoa(encodeURIComponent(JSON.stringify(dp[dr]))); dw.parentNode.insertBefore(dx, dw)}; ["complete", "interactive"].includes(dq.readyState)?zaraz.init():dp.addEventListener("DOMContentLoaded", zaraz.init)}(w, d, "zarazData", "script"); })(window, document);</script>


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
                                    </p>
                                </a>
                            </li>

                            <li class="nav-item">
                                <a href="datos-estudiantes.jsp" class="nav-link">
                                    <i class="nav-icon fas fa-pen"></i>
                                    <p>
                                        Datos de los Estudiantes
                                    </p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="inicio.jsp" class="nav-link">
                                    <i class="nav-icon fas fa-award"></i>
                                    <p>
                                        Becas
                                        <i class="right fas fa-angle-left"></i>
                                    </p>
                                </a>
                                <ul class="nav nav-treeview">
                                    <li class="nav-item">
                                        <a href="becarios.jsp" class="nav-link">
                                            <i class="nav-icon fas fa-signature"></i>
                                            <p>
                                                Reporte de Estudiantes
                                            </p>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="gestion.jsp" class="nav-link">
                                            <i class="nav-icon fas fa-signature"></i>
                                            <p>
                                                Gestionar las Becas
                                            </p>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="reportes.jsp" class="nav-link">
                                            <i class="nav-icon fas fa-check"></i>
                                            <p>
                                                Becas Aprobadas
                                            </p>
                                        </a>
                                    </li>
                                </ul>
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
                <section id="about" class="about">
                    <div class="container ">
                        <br>
                        <div class="container">
                            <div class="card text-center border-dark">
                                <div class="card-header text-white">
                                    <h2>Actualizar Datos del Estudiante</h2>
                                </div>
                            </div>
                        </div>

                        <br>

                        <form action="servActEst"method="POST" class="row g-3">                        
                            <div class="container">
                                <!-- Botón de Guardar con Icono -->

                                <a href="becarios.jsp" class=" btn btn-info mx-2"> <i class="fas fa-arrow-left px-1"></i>Regresar</a> 

                                <!-- Botón de Actualizar -->
                                <button name="acc" value="act"type="submit" class="btn btn-success">
                                    <i class="fas fa-sync-alt px-1"></i> Actualizar
                                </button>

                            </div>


                            <div class="">
                                <div class="card card-primary card-tabs">
                                    <div class="card-header p-0 pt-1">
                                        <ul class="nav nav-tabs" id="custom-tabs-one-tab" role="tablist">
                                            <li class="nav-item">
                                                <a class="nav-link active" id="custom-tabs-one-home-tab" data-toggle="pill" href="#custom-tabs-one-home" role="tab" aria-controls="custom-tabs-one-home" aria-selected="false">Datos Personales</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" id="custom-tabs-one-con-tab" data-toggle="pill" href="#custom-tabs-one-con" role="tab" aria-controls="custom-tabs-one-con" aria-selected="true">Datos de Contacto</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" id="custom-tabs-one-profile-tab" data-toggle="pill" href="#custom-tabs-one-profile" role="tab" aria-controls="custom-tabs-one-profile" aria-selected="true">Datos Institucionales</a>
                                            </li>

                                            <li class="nav-item">
                                                <a class="nav-link" id="custom-tabs-one-settings-tab" data-toggle="pill" href="#custom-tabs-one-settings" role="tab" aria-controls="custom-tabs-one-settings" aria-selected="false">Postular a una Beca</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="card-body">
                                        <%
                                            ArrayList<Estudiantes> listaOperaciones = (ArrayList<Estudiantes>) request.getAttribute("cajitaReporte");
                                            ArrayList<Estudiantes> mostrarUno = (ArrayList<Estudiantes>) request.getAttribute("cajitaReporteUno");

                                            if (listaOperaciones != null && mostrarUno != null) {
                                                // Combina ambas listas antes del bucle
                                                listaOperaciones.addAll(mostrarUno);

                                                for (Estudiantes operacion : listaOperaciones) {
                                        %>

                                        <div class="tab-content" id="custom-tabs-one-tabContent">
                                            <%--DATOS PERSONALES--%>
                                            <div class="tab-pane fade active show" id="custom-tabs-one-home" role="tabpanel" aria-labelledby="custom-tabs-one-home-tab">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <label for="inputnombre1" class="form-label">1. Tipo de Identificacion</label>
                                                        <select class="form-select" id="selecTipo" name="tipoIden">
                                                            <option value="null">Seleccione...</option>
                                                            <option>Cedula</option>
                                                            <option>Pasaporte</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label for="inputnombre1" class="form-label">2. Número de Identificacion</label>
                                                        <input  name="numCedula" type="number" class="form-control" id="" >
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <label for="inputapellido" class="form-label">3. Primer Apellido</label>
                                                        <input name="apellido1" type="apellido" class="form-control" id="inputapellido">
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label for="inputapellido" class="form-label">4. Segundo Apellido</label>
                                                        <input name="apellido2" type="apellido" class="form-control" id="inputapellido">
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <label for="inputapellido" class="form-label">5. Primer Nombre</label>
                                                        <input name="nombre1" type="apellido" class="form-control" id="inputapellido">
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label for="inputapellido" class="form-label">6. Segundo Nombre</label>
                                                        <input name="nombre2" type="apellido" class="form-control" id="inputapellido">
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-md-6" >
                                                        <label for="inputnombre1" class="form-label">7. Fecha de Nacimiento</label>
                                                        <input name="fechanac" type="text" class="form-control" data-inputmask-alias="datetime" data-inputmask-inputformat="dd/mm/yyyy" data-mask="" inputmode="numeric">
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label for="inputnombre1" class="form-label">8. Género del Estudiante</label>
                                                        <select name="generoEstu" class="form-select" id="inputcedula1">
                                                            <option value="null">Seleccione...</option>
                                                            <option>Masculino</option>
                                                            <option>Femenino</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <label for="inputnombre1" class="form-label">9. Estado Civil</label>
                                                        <select name="estadoCi" class="form-select" id="inputcedula1">
                                                            <option value="null">Seleccione...</option>
                                                            <option>Soltero</option>
                                                            <option>Casado</option>
                                                            <option>Union de Hecho</option>
                                                            <option>Divorciado</option>
                                                            <option>Viudo</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label for="inputnombre1" class="form-label">10. Etnia</label>
                                                        <select name="etnia" class="form-select" id="inputcedula1" >
                                                            <option value="null">Seleccione...</option>
                                                            <option>INDIGENA</option>
                                                            <option>AFROECUATORIANO</option>
                                                            <option>NEGRO</option>
                                                            <option>MULATO</option>
                                                            <option>MOTUBIO</option>
                                                            <option>MESTIZO</option>
                                                            <option>BLANCO</option>
                                                            <option>OTRO</option>
                                                            <option>NO REGISTRA</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <label for="" class="form-label">11. Pueblo</label>
                                                        <input name="txtPueblo" type="text" class="form-control" id="">
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label for="inputnombre1" class="form-label">12. Tipo de sangre</label>
                                                        <select name="tipoSangre" class="form-select" id="inputcedula1" >
                                                            <option value="null">Seleccione...</option>
                                                            <option>A RH ( + )</option>
                                                            <option>A RH ( - )</option>
                                                            <option>B RH ( + )</option>
                                                            <option>B RH ( - )</option>
                                                            <option>AB RH ( + )</option>
                                                            <option>AB RH ( - )</option>
                                                            <option>O RH ( + )</option>
                                                            <option>O RH ( - )</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <label for="inputnombre1" class="form-label">13. Tiene Discapacidad</label>
                                                        <select name="discapacidad" class="form-select" id="inputcedula1" >
                                                            <option value="null">Seleccione...</option>
                                                            <option>Si</option>
                                                            <option>No</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label for="inputnombre1" class="form-label">14. Porcentaje de Discapacidad</label>
                                                        <input name="porDisc" type="number" class="form-control" id="inputcorreo1" >
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <label for="inputnombre1" class="form-label">15. Nro. de Carnet</label>
                                                        <input name="numCarnet" type="number" class="form-control" id="inputcorreo1" >
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label for="inputnombre1" class="form-label">16. Tipo de Discapacidad</label>
                                                        <select name="tipoDisca" class="form-select" id="inputcedula1" >
                                                            <option value="null">Seleccione...</option>
                                                            <option>DISCAPACIDAD INTELECTUAL</option>
                                                            <option>DISCAPACIDAD FISICA</option>
                                                            <option>DISCAPACIDAD VISUAL</option>
                                                            <option>DISCAPACIDAD AUDITIVA</option>
                                                            <option>DISCAPACIDAD MENTAL</option>
                                                            <option>OTRA</option>
                                                            <option>NO APLICA</option>
                                                        </select>
                                                    </div>
                                                </div>                                               
                                            </div>
                                            <%--DATOS DE CONTACTO--%>
                                            <div class="tab-pane fade" id="custom-tabs-one-con" role="tabpanel" aria-labelledby="custom-tabs-one-con-tab">
                                                <div class="row">
                                                    <div class="col-6">
                                                        <label for="inputnombre1" class="form-label">17. Provincia de Nacimiento</label>
                                                        <input name="proNaci" type="text" class="form-control" id="inputcorreo1" >
                                                    </div>

                                                    <div class="col-md-6">
                                                        <label for="inputnombre1" class="form-label">18. Cantón de Nacimiento</label>
                                                        <input name="cantNaci" type="text" class="form-control" id="inputcorreo1" >
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-6">
                                                            <label for="inputnombre1" class="form-label">19. Provincia de Residencia</label>
                                                            <input name="proRes"  type="text" class="form-control" id="inputcorreo1" >
                                                        </div>

                                                        <div class="col-md-6">
                                                            <label for="inputnombre1" class="form-label">20. Cantón de Residencia</label>
                                                            <input name="cantRes"  type="text" class="form-control" id="inputcorreo1" >
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <label for="inputcorreo1" class="form-label">21. Correo Electrónico</label>
                                                            <input name="correo"  type="text" class="form-control" id="inputcorreo1">
                                                        </div>
                                                        <div class="col-md-6">
                                                            <label for="inputcorreo1" class="form-label">22. Número de celular</label>
                                                            <input name="numcelular"  type="number" class="form-control" id="inputcorreo1" >
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <label for="inputnombre1" class="form-label">23. Nivel de Formación del Padre</label>
                                                            <select name="formacionPadre" class="form-select" id="inputcedula1" >
                                                                <option value="null">Seleccione...</option>
                                                                <option>CENTRO DE ALFABETIZACIÓN</option>
                                                                <option>JARDÍN DE INFANTES</option>
                                                                <option>PRIMARIA</option>
                                                                <option>EDUCACIÓN BÁSICA</option>
                                                                <option>SECUNDARIA</option>
                                                                <option>EDUCACIÓN MEDIA</option>
                                                                <option>SUPERIOR NO UNIVERSITARIA</option>
                                                                <option>SUPERIOR UNIVERSITARIA</option>
                                                                <option>POSGRADO</option>
                                                                <option>NO APLICA</option>
                                                            </select>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <label for="inputnombre1" class="form-label">24. Nivel de Formación de la Madre</label>
                                                            <select name="formacionMadre" class="form-select" id="inputcedula1" >
                                                                <option value="null">Seleccione...</option>
                                                                <option>CENTRO DE ALFABETIZACIÓN</option>
                                                                <option>JARDÍN DE INFANTES</option>
                                                                <option>PRIMARIA</option>
                                                                <option>EDUCACIÓN BÁSICA</option>
                                                                <option>SECUNDARIA</option>
                                                                <option>EDUCACIÓN MEDIA</option>
                                                                <option>SUPERIOR NO UNIVERSITARIA</option>
                                                                <option>SUPERIOR UNIVERSITARIA</option>
                                                                <option>POSGRADO</option>
                                                                <option>NO APLICA</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <label for="inputcorreo1" class="form-label">25. Ingreso Total en el hogar</label>
                                                            <input name="totalHogar" type="number" class="form-control" id="inputcorreo1">
                                                        </div>
                                                        <div class="col-md-6">
                                                            <label for="inputcorreo1" class="form-label">26. Número de miembros en el hogar</label>
                                                            <input name="numHogar" type="text" class="form-control" id="inputcorreo1">
                                                        </div>
                                                    </div>


                                                </div>
                                            </div>
                                            <%--DATOS INSTITUCIONALES--%>
                                            <div class="tab-pane fade" id="custom-tabs-one-profile" role="tabpanel" aria-labelledby="custom-tabs-one-profile-tab">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <label for="inputnombre1" class="form-label">27. Tipo de Colegio</label>
                                                        <select name="tipoColegio" class="form-select" id="inputcedula1" >
                                                            <option value="null">Seleccione...</option>
                                                            <option>FISCAL</option>
                                                            <option>FISCOMISIONAL</option>
                                                            <option>PARTICULAR</option>
                                                            <option>MUNICIPAL</option>
                                                            <option>EXTRANJERO</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label for="inputnombre1" class="form-label">28. Modalidad de carrera</label>
                                                        <select name="modalidad" class="form-select" id="inputcedula1" >
                                                            <option value="null">Seleccione...</option>
                                                            <option>PRESENCIAL</option>
                                                            <option>VIRTUAL</option>
                                                        </select>
                                                    </div>

                                                </div>
                                                <div class="row">

                                                    <div class="col-md-6">
                                                        <label for="inputnombre1" class="form-label">29. Jornada de la Carrera</label>
                                                        <select name="jornada" class="form-select" id="inputcedula1" >
                                                            <option value="null">Seleccione...</option>
                                                            <option>MATUTINA</option>
                                                            <option>NOCTURNA</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label for="inputnombre1" class="form-label">30. Fecha en la que inició el estudiante la carrera</label>
                                                        <input name="fechaInicio" type="text" class="form-control" data-inputmask-alias="datetime" data-inputmask-inputformat="dd/mm/yyyy" data-mask="" inputmode="numeric">
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <label for="inputnombre1" class="form-label">31. Fecha de matrícula</label>
                                                        <input name="fechamatricula" type="text" class="form-control" data-inputmask-alias="datetime" data-inputmask-inputformat="dd/mm/yyyy" data-mask="" inputmode="numeric">
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label for="inputnombre1" class="form-label">32. Tipo de matrícula</label>
                                                        <select name="tipoMatricula" class="form-select" id="inputcedula1" >
                                                            <option value="null" >Seleccione...</option>
                                                            <option>ORDINARIA</option>
                                                            <option>EXTRAORDINARIA</option>
                                                        </select> 
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <label for="inputnombre1" class="form-label">33. Nivel académico</label>
                                                        <select name="nivelAca" class="form-select" id="" >
                                                            <option value="null">Seleccione...</option>
                                                            <option>PRIMERO</option>
                                                            <option >SEGUNDO</option>
                                                            <option >TERCERO</option>
                                                            <option >CUARTO</option>
                                                            <option >QUINTO</option>
                                                        </select> 
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label for="inputcorreo1" class="form-label">34. Número de semanas de duración del período académico</label>
                                                        <input name="semanasDuracion" type="number" class="form-control" id="inputcorreo1" >
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <label for="inputnombre1" class="form-label">35. Ha repetido al menos una materia</label>
                                                        <select name="repetidoMateria" class="form-select" id="inputcedula1" >
                                                            <option value="null">Seleccione...</option>
                                                            <option>Si</option>
                                                            <option>No</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label for="inputcorreo1" class="form-label">36. Carrera</label>
                                                        <select name="carrera" class="form-select" id="inputcedula1" >
                                                            <option value="null">Seleccione...</option>
                                                            <option>ADMINISTRACIÓN DE EMPRESAS</option>
                                                            <option>DESARROLLO DE SOFTWARE</option>
                                                            <option>DISEÑO GRÁFICO</option>
                                                        </select> 
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <label for="inputcorreo1" class="form-label">37. Paralelo</label>
                                                        <input name="paralelo" type="text" class="form-control" id="inputcorreo1" >
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label for="inputnombre1" class="form-label">38. Ha perdido la gratuidad</label>
                                                        <select name="perdidoGratuidad" class="form-select" id="inputcedula1" >
                                                            <option value="null">Seleccione...</option>
                                                            <option>Si</option>
                                                            <option>No</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <label for="inputnombre1" class="form-label">39. Posee pensión diferenciada</label>
                                                        <select name="pension" class="form-select" id="inputcedula1" >
                                                            <option value="null">Seleccione...</option>
                                                            <option>Si</option>
                                                            <option>No</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label for="inputnombre1" class="form-label">40. El estudiante se encuentra dedicado a</label>
                                                        <select name="seEncuentra" class="form-select" id="inputcedula1" >
                                                            <option value="null">Seleccione...</option>
                                                            <option>SOLO ESTUDIA</option>
                                                            <option>TRABAJA Y ESTUDIA</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <label for="inputnombre1" class="form-label">41. El estudiante para qué emplea sus ingresos</label>
                                                        <select name="empleIngresos" class="form-select" id="inputcedula1" >
                                                            <option value="null" >Seleccione...</option>
                                                            <option>FINANCIAR SUS ESTUDIOS</option>
                                                            <option>PARA MANTENER A SU HOGAR</option>
                                                            <option>GASTOS PERSONALES</option>
                                                            <option>NO APLICA</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label for="inputnombre1" class="form-label">42. La familia del estudiante recibe el bono de desarrollo humano</label>
                                                        <select name="recibeBono" class="form-select" id="inputcedula1" >
                                                            <option value="null">Seleccione...</option>
                                                            <option>Si</option>
                                                            <option>No</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <label for="inputnombre1" class="form-label">43. El estudiante ha realizado prácticas pre profesionales</label>
                                                        <select name="realizoPracticas" class="form-select" id="inputcedula1" >
                                                            <option value="null">Seleccione...</option>
                                                            <option>Si</option>
                                                            <option>No</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label for="inputcorreo1" class="form-label">44. Horas de la última práctica pre profesional que realizó el estudiante</label>
                                                        <input name="horasprac" type="number" class="form-control" id="inputcorreo1" >
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <label for="inputcorreo1" class="form-label">45. Tipo de institución en el que realiza las prácticas pre profesionales</label>
                                                        <input name="instprac"  type="text" class="form-control" id="inputcorreo1" >
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label for="inputcorreo1" class="form-label">46. Sector económico en el que realizó  las prácticas pre profesionales</label>
                                                        <input name="econprac"  type="text" class="form-control" id="inputcorreo1" >
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <label for="inputcorreo1" class="form-label">47. Ha participado durante el periodo de un proyecto de vinculación social</label>
                                                        <select name="participadoVincu" class="form-select" id="inputcedula1" >
                                                            <option value="null">Seleccione...</option>
                                                            <option>Si</option>
                                                            <option>No</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label for="inputcorreo1" class="form-label">48. Alcance del proyecto de vinculación con la sociedad</label>
                                                        <input name="alcanceVin" type="text" class="form-control" id="inputcorreo1" >
                                                    </div>
                                                </div>
                                            </div>

                                            <%--BECAS A POSTULAR--%>

                                            <div class="tab-pane fade" id="custom-tabs-one-settings" role="tabpanel" aria-labelledby="custom-tabs-one-settings-tab">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <label for="inputnombre1" class="form-label">Nombre de Componente</label>
                                                        <select name="nombreComponente" class="form-select" id="idselect" onchange="updateLabel()">
                                                            <option value="null" >Seleccione...</option>
                                                            <option value="SITUACIÓN DE ESCASOS RECURSOS">SITUACIÓN DE ESCASOS RECURSOS</option>
                                                            <option value="PUEBLOS Y NACIONALIDADES">PUEBLOS Y NACIONALIDADES</option>
                                                            <option value="PERSONAS CON CONDICIÓN DE DISCAPACIDAD PERMANENTE">PERSONAS CON CONDICIÓN DE DISCAPACIDAD PERMANENTE</option>
                                                            <option value="MUJERES VÍCTIMAS DE VIOLENCIA BASADAS EN GÉNERO">MUJERES VÍCTIMAS DE VIOLENCIA BASADAS EN GÉNERO</option>
                                                            <option value="POBLACIÓN ECUATORIANA RETORNADA">POBLACIÓN ECUATORIANA RETORNADA</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label for="inputcorreo1" class="form-label">Requisitos</label>
                                                        <textarea name="requi" type="text" id="verText" class="form-control" rows="4" readonly></textarea>
                                                    </div>
                                                </div>
                                                <script>
                                                    function updateLabel() {
                                                    var selectedOption = document.getElementById("idselect").value;
                                                    var textarea = document.getElementById("verText");
                                                    switch (selectedOption) {

                                                    case "SITUACIÓN DE ESCASOS RECURSOS":
                                                            textarea.innerText = "Condición de vulnerabilidad económica.\n" +
                                                            " Se verificará que la persona postulante pertenezca al grupo “pobreza” o “extrema pobreza”, según lo determinado en el Registro Social.";
                                                    break;
                                                    case "PUEBLOS Y NACIONALIDADES":
                                                            textarea.innerText = "Pertenecer a un pueblo o nacionalidad ecuatoriana.\n" +
                                                            " Certificado de auto identificación para personas de pueblos y nacionalidades emitido\n" +
                                                            " por el Consejo Nacional para la Igualdad de Pueblos y Nacionalidades.";
                                                    break;
                                                    case "PERSONAS CON CONDICIÓN DE DISCAPACIDAD PERMANENTE":
                                                            textarea.innerText = "Presentar condición de discapacidad permanente calificada por la autoridad pública competente, de conformidad con la normativa vigente.\n" +
                                                            " Se verificará mediante la información oficial remitida por la entidad pública competente, que la persona postulante tenga discapacidad permanente igual o mayor al 30%, debidamente calificada.";
                                                    break;
                                                    case "MUJERES VÍCTIMAS DE VIOLENCIA BASADAS EN GÉNERO":
                                                            textarea.innerText = "Haber sido víctimas de violencia basada en género.\n" +
                                                            " Certificación del inicio de la investigación previa o sentencia condenatoria\n" +
                                                            " ejecutoriada en procesos penales.\n" +
                                                            " Auto de calificación en procesos contravencionales.";
                                                    break;
                                                    case "POBLACIÓN ECUATORIANA RETORNADA":
                                                            textarea.innerText = "Ser persona ecuatoriana retornada.\n" +
                                                            " Copia de la declaratoria de vulnerabilidad de conformidad al artículo 21 de la Ley Orgánica de Movilidad Humana.\n" +
                                                            " Copia de certificado de persona ecuatoriana retornada emitido por el Ministerio de Relaciones Exteriores y Movilidad Humana, que se encuentre vigente.";
                                                    break;
                                                    default:
                                                            textarea.innerText = "";
                                                    }
                                                    }
                                                </script>

                                            </div>
                                        </div>
                                        <%   }
                                            }
                                        %>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </section>
            </div> 
            <footer class="main-footer no-print">
                <strong>Copyright © 2024 <a href="#">SAGBI</a>.</strong>
            </footer>
        </div>





        <script src="https://adminlte.io/themes/v3/plugins/jquery/jquery.min.js"></script>

        <script src="https://adminlte.io/themes/v3/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

        <script src="https://adminlte.io/themes/v3/dist/js/adminlte.min.js?v=3.2.0"></script>

        <script src="https://adminlte.io/themes/v3/plugins/select2/js/select2.full.min.js"></script>
        <script src="https://adminlte.io/themes/v3/plugins/bootstrap4-duallistbox/jquery.bootstrap-duallistbox.min.js"></script>
        <script src="https://adminlte.io/themes/v3/plugins/moment/moment.min.js"></script>
        <script src="https://adminlte.io/themes/v3/plugins/inputmask/jquery.inputmask.min.js"></script>
        <script src="https://adminlte.io/themes/v3/plugins/daterangepicker/daterangepicker.js"></script>
        <script src="https://adminlte.io/themes/v3/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
        <script src="https://adminlte.io/themes/v3/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>


        <script>
                                                    $(function () {
                                                    //Initialize Select2 Elements
                                                    $('.select2').select2()

                                                            //Initialize Select2 Elements
                                                            $('.select2bs4').select2({
                                                    theme: 'bootstrap4'
                                                    })

                                                            //Datemask dd/mm/yyyy
                                                            $('#datemask').inputmask('dd/mm/yyyy', { 'placeholder': 'dd/mm/yyyy' })
                                                            //Datemask2 mm/dd/yyyy
                                                            $('#datemask2').inputmask('mm/dd/yyyy', { 'placeholder': 'mm/dd/yyyy' })
                                                            //Money Euro
                                                            $('[data-mask]').inputmask()

                                                            //Date picker
                                                            $('#reservationdate').datetimepicker({
                                                    format: 'L'
                                                    });
                                                    //Date and time picker
                                                    $('#reservationdatetime').datetimepicker({ icons: { time: 'far fa-clock' } });
                                                    //Date range picker
                                                    $('#reservation').daterangepicker()
                                                            //Date range picker with time picker
                                                            $('#reservationtime').daterangepicker({
                                                    timePicker: true,
                                                            timePickerIncrement: 30,
                                                            locale: {
                                                            format: 'MM/DD/YYYY hh:mm A'
                                                            }
                                                    })
                                                            //Date range as a button
                                                            $('#daterange-btn').daterangepicker(
                                                    {
                                                    ranges   : {
                                                    'Today'       : [moment(), moment()],
                                                            'Yesterday'   : [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                                                            'Last 7 Days' : [moment().subtract(6, 'days'), moment()],
                                                            'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                                                            'This Month'  : [moment().startOf('month'), moment().endOf('month')],
                                                            'Last Month'  : [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                                                    },
                                                            startDate: moment().subtract(29, 'days'),
                                                            endDate  : moment()
                                                    },
                                                            function (start, end) {
                                                            $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'))
                                                            }
                                                    )

                                                            //Timepicker
                                                            $('#timepicker').datetimepicker({
                                                    format: 'LT'
                                                    })

                                                            //Bootstrap Duallistbox
                                                            $('.duallistbox').bootstrapDualListbox()

                                                            //Colorpicker
                                                            $('.my-colorpicker1').colorpicker()
                                                            //color picker with addon
                                                            $('.my-colorpicker2').colorpicker()

                                                            $('.my-colorpicker2').on('colorpickerChange', function(event) {
                                                    $('.my-colorpicker2 .fa-square').css('color', event.color.toString());
                                                    })

                                                            $("input[data-bootstrap-switch]").each(function(){
                                                    $(this).bootstrapSwitch('state', $(this).prop('checked'));
                                                    })

                                                    })
                                                            // BS-Stepper Init
                                                            document.addEventListener('DOMContentLoaded', function () {
                                                            window.stepper = new Stepper(document.querySelector('.bs-stepper'))
                                                            })

                                                            // DropzoneJS Demo Code Start
                                                            Dropzone.autoDiscover = false

                                                            // Get the template HTML and remove it from the doumenthe template HTML and remove it from the doument
                                                            var previewNode = document.querySelector("#template")
                                                            previewNode.id = ""
                                                            var previewTemplate = previewNode.parentNode.innerHTML
                                                            previewNode.parentNode.removeChild(previewNode)

                                                            var myDropzone = new Dropzone(document.body, { // Make the whole body a dropzone
                                                            url: "/target-url", // Set the url
                                                                    thumbnailWidth: 80,
                                                                    thumbnailHeight: 80,
                                                                    parallelUploads: 20,
                                                                    previewTemplate: previewTemplate,
                                                                    autoQueue: false, // Make sure the files aren't queued until manually added
                                                                    previewsContainer: "#previews", // Define the container to display the previews
                                                                    clickable: ".fileinput-button" // Define the element that should be used as click trigger to select files.
                                                            })

                                                            myDropzone.on("addedfile", function(file) {
                                                            // Hookup the start button
                                                            file.previewElement.querySelector(".start").onclick = function() { myDropzone.enqueueFile(file) }
                                                            })

                                                            // Update the total progress bar
                                                            myDropzone.on("totaluploadprogress", function(progress) {
                                                            document.querySelector("#total-progress .progress-bar").style.width = progress + "%"
                                                            })

                                                            myDropzone.on("sending", function(file) {
                                                            // Show the total progress bar when upload starts
                                                            document.querySelector("#total-progress").style.opacity = "1"
                                                                    // And disable the start button
                                                                    file.previewElement.querySelector(".start").setAttribute("disabled", "disabled")
                                                            })

                                                            // Hide the total progress bar when nothing's uploading anymore
                                                            myDropzone.on("queuecomplete", function(progress) {
                                                            document.querySelector("#total-progress").style.opacity = "0"
                                                            })

                                                            // Setup the buttons for all transfers
                                                            // The "add files" button doesn't need to be setup because the config
                                                            // `clickable` has already been specified.
                                                            document.querySelector("#actions .start").onclick = function() {
                                                    myDropzone.enqueueFiles(myDropzone.getFilesWithStatus(Dropzone.ADDED))
                                                    }
                                                    document.querySelector("#actions .cancel").onclick = function() {
                                                    myDropzone.removeAllFiles(true)
                                                    }
                                                    // DropzoneJS Demo Code End
        </script>


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

    </body></html>