<%-- 
    Document   : index
    Created on : 27-nov-2023, 8:09:54
    Author     : Pato
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SAGBI | Login</title>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="bootstrap/js/bootstrap.bundle.min.js" type="text/javascript"></script>

    </head>
    <body class="bg-dark">
        <div class="d-flex my-5 justify-content-center align-items-center vh-100">
            <div class="card rounded-4">
                <div class="row">
                    <div class="col-md-6 col-lg-5 d-none d-lg-block">
                        <img src="img/bienestar.png" alt="" class="img-fluid h-100 rounded-start-4"/>
                    </div>
                    <div class="col-md-6 col-lg-7 d-flex align-items-center">
                        <div class="card-body p-4 p-lg-5 text-black">
                            <form action="mServlet" method="POST">
                                <div class="d-flex align-items-center mb-3">
                                    <span class="h1 fw-bold">Bienvenido</span>
                                </div>
                                <h5 class="fw-normal mb-3 pb-3">Iniciar sesión en tu cuenta</h5>
                                <div class="form-floating mb-3">
                                    <input type="email" class="form-control" id="floatingInput" name="usuario" placeholder="name@example.com">
                                    <label for="floatingInput">Correo electrónico</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input type="password" class="form-control" id="floatingPassword" name="pass" placeholder="Password">
                                    <label for="floatingPassword">Contraseña</label>
                                </div>
                                <div class="pt-1 mb-4">
                                    <input class="btn btn-dark btn-lg btn-block" type="submit" name="validar" value="Iniciar sesión">
                                </div>
                                <div class="my-3 text-black">
                                    <span>No tienes cuenta? <a href="registro.jsp">Regístrate</a></span>
                                </div>
                                <!-- Modal -->
                                <%
                                    if (request.getAttribute("cajitaBase") != null) {
                                %>
                                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h1 class="modal-title fs-5" id="exampleModalLabel">Mensaje de Base de Datos</h1>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                <%  out.println(request.getAttribute("cajitaBase"));
                                                %>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <%
                                    }
                                    if (request.getAttribute("inicioSesion") != null) {
                                %>
                                <div class="alert alert-warning alert-dismissible fade show" role="alert">
                                    <%
                                        out.println(request.getAttribute("inicioSesion"));
                                    %>
                                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                </div>
                                <%
                                    }
                                %>

                                <script>
                                    // Mostrar el modal automáticamente al cargar la página
                                    window.onload = function () {
                                        var modal = new bootstrap.Modal(document.getElementById('exampleModal'));
                                        modal.show();
                                    };
                                </script>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
