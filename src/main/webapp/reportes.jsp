<%-- 
    Document   : datos-estudiantes
    Created on : 03-dic-2023, 13:40:31
    Author     : Pato
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html style="height: auto;" lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>SAGBI | Gestión de Becas</title>

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
                                        <a href="becarios.jsp" class="nav-link">
                                            <i class="nav-icon fas fa-signature"></i>
                                            <p>
                                                Solicitud de Becas
                                                <!-- <span class="right badge badge-danger">New</span>-->
                                            </p>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="reportes.jsp" class="nav-link active">
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
                                        Gestión de Usuarios
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
                        <div class="panel">
                            <div class="panel-heading">
                                <br>
                                <div class="container mt-20">
                                    <div class="card text-center border-dark">
                                        <div class="card-header text-white">
                                            <h2>Gestionar Becas de los Estudiantes</h2>
                                        </div>
                                    </div>
                                </div>
                                <!-- Espacio para buscar -->
                                <input type="apellido" class="w-50 my-3" style="    border-radius: 5px; /* Ajusta según sea necesario para redondear los bordes */
                                       background-color: #343a40; /* Color de fondo oscuro */
                                       color: #ffffff; /* Color del texto en claro */
                                       padding: 8px; /* Ajusta según sea necesario para el espacio interno */
                                       border: none; /* Elimina el borde predeterminado */" placeholder="Buscar por número de identificación" id="inputapellido">

                                <button type="button" class="btn btn-dark">
                                    <i class="fas fa-search mx-1"></i> Buscar
                                </button>
                                <br>

                                <div class="panel-body table-responsive" >
                                    <div class="panel-body table-responsive">



                                        <table class="table table-striped table-hover table-bordered">
                                            <thead>
                                                <tr class="bg-dark">
                                                    <th>#</th>
                                                    <th>Cedula</th>
                                                    <th>Nombre</th>
                                                    <th>Apellido</th>
                                                    <th>Fecha Revición</th>
                                                    <th>¿Completó los documentos?</th>
                                                    <th>¿Aprobó la beca?</th>
                                                    <th>Acciones</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>


                                                    <td><label contenteditable="true">1</label></td>
                                                    <td><label contenteditable="true">1754010476</label></td>
                                                    <td><label contenteditable="true">Alisson</label></td>
                                                    <td><label contenteditable="true">Cueva</label></td>
                                                    <td><label>23-12-2023</label></td>
                                                    <td><div class="form-group">
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="radio" name="radio0" checked="true">
                                                                <label class="form-check-label">Si</label>
                                                            </div>
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="radio" name="radio0">
                                                                <label class="form-check-label">No</label>
                                                            </div>

                                                        </div></td>
                                                    <td><div class="form-group">
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="radio" name="radio4" checked="true">
                                                                <label class="form-check-label">Si</label>
                                                            </div>
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="radio" name="radio4">
                                                                <label class="form-check-label">No</label>
                                                            </div>

                                                        </div></td>


                                                    <td>
                                                        <ul class="action-list">
                                                            <div class="container mt-4">                                    <!-- Botón de Eliminar -->
                                                                <button type="button" class="btn btn-danger" data-toggle="tooltip" data-placement="top" title="Eliminar">
                                                                    <i class="fas fa-trash"></i> Eliminar
                                                                </button>

                                                                <!-- Botón de Actualizar -->
                                                                <button type="button" class="btn btn-success" data-toggle="tooltip" data-placement="top" title="Actualizar">
                                                                    <i class="fas fa-sync-alt"></i> Actualizar
                                                                </button>
                                                            </div>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>


                                                    <td><label contenteditable="true">2</label></td>
                                                    <td><label contenteditable="true">1754010476</label></td>
                                                    <td><label contenteditable="true">Johana</label></td>
                                                    <td><label contenteditable="true">Salazar</label></td>
                                                    <td><label>23-12-2023</label></td>
                                                    <td><div class="form-group">
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="radio" name="radio1" checked="true">
                                                                <label class="form-check-label">Si</label>
                                                            </div>
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="radio" name="radio1">
                                                                <label class="form-check-label">No</label>
                                                            </div>

                                                        </div></td>
                                                    <td><div class="form-group">
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="radio" name="radio5" checked="true">
                                                                <label class="form-check-label">Si</label>
                                                            </div>
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="radio" name="radio5">
                                                                <label class="form-check-label">No</label>
                                                            </div>

                                                        </div></td>
                                                    <td>
                                                        <ul class="action-list">
                                                            <div class="container mt-4">                                    <!-- Botón de Eliminar -->
                                                                <button type="button" class="btn btn-danger" data-toggle="tooltip" data-placement="top" title="Eliminar">
                                                                    <i class="fas fa-trash"></i> Eliminar
                                                                </button>

                                                                <!-- Botón de Actualizar -->
                                                                <button type="button" class="btn btn-success" data-toggle="tooltip" data-placement="top" title="Actualizar">
                                                                    <i class="fas fa-sync-alt"></i> Actualizar
                                                                </button>
                                                        </ul>
                                                    </td>

                                            </tbody>
                                            <tr>


                                                <td><label contenteditable="true">3</label></td>
                                                <td><label contenteditable="true">1754010476</label></td>
                                                <td><label contenteditable="true">Gisella</label></td>
                                                <td><label contenteditable="true">Salazar</label></td>
                                                <td><label>23-12-2023</label></td>
                                                <td><div class="form-group">
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="radio" name="radio2">
                                                            <label class="form-check-label">Si</label>
                                                        </div>
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="radio" name="radio2" checked="true">
                                                            <label class="form-check-label">No</label>
                                                        </div>

                                                    </div></td>
                                                <td><div class="form-group">
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="radio" name="radio6">
                                                            <label class="form-check-label">Si</label>
                                                        </div>
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="radio" name="radio6" checked="true">
                                                            <label class="form-check-label">No</label>
                                                        </div>

                                                    </div></td>

                                                <td>
                                                    <ul class="action-list">
                                                        <div class="container mt-4">                                    <!-- Botón de Eliminar -->
                                                            <button type="button" class="btn btn-danger" data-toggle="tooltip" data-placement="top" title="Eliminar">
                                                                <i class="fas fa-trash"></i> Eliminar
                                                            </button>

                                                            <!-- Botón de Actualizar -->
                                                            <button type="button" class="btn btn-success" data-toggle="tooltip" data-placement="top" title="Actualizar">
                                                                <i class="fas fa-sync-alt"></i> Actualizar
                                                            </button>
                                                        </div>
                                                    </ul>
                                                </td>

                                            <tr>   
                                                <td><label contenteditable="true">4</label></td>
                                                <td><label contenteditable="true">1754010476</label></td>
                                                <td><label contenteditable="true">Karen</label></td>
                                                <td><label contenteditable="true">Romero</label></td>
                                                <td><label>23-12-2023</label></td>
                                                <td><div class="form-group">
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="radio" name="radio3">
                                                            <label class="form-check-label">Si</label>
                                                        </div>
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="radio" name="radio3" checked="true">
                                                            <label class="form-check-label">No</label>
                                                        </div>

                                                    </div></td>
                                                <td><div class="form-group">
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="radio" name="radio7">
                                                            <label class="form-check-label">Si</label>
                                                        </div>
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="radio" name="radio7" checked="true">
                                                            <label class="form-check-label">No</label>
                                                        </div>

                                                    </div></td>

                                                <td>
                                                    <ul class="action-list">
                                                        <div class="container mt-4">                                    <!-- Botón de Eliminar -->
                                                            <button type="button" class="btn btn-danger" data-toggle="tooltip" data-placement="top" title="Eliminar">
                                                                <i class="fas fa-trash"></i> Eliminar
                                                            </button>

                                                            <!-- Botón de Actualizar -->
                                                            <button type="button" class="btn btn-success" data-toggle="tooltip" data-placement="top" title="Actualizar">
                                                                <i class="fas fa-sync-alt"></i> Actualizar
                                                            </button>
                                                        </div>
                                                    </ul>
                                                </td>
                                                </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="container my-3">
                                    <!-- Botón de Guardar con Icono -->
                                    <button type="button" class="btn btn-info">
                                        <i class="fas fa-save"></i> Guardar
                                    </button>
                                </div>
                            </div>
                        </div>
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
