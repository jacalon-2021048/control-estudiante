<%-- 
    Document   : estudiante
    Created on : 18/08/2022, 10:18:08
    Author     : informatica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:setLocale value="es_GT" />

<!DOCTYPE html>
<html lang="es-GT">
    <head>
        <title>Fundación Kinal</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="../assets/css/hoja-estilo-kinal.css" />
        <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.css"/>
        <script type="text/javascript" src="../assets/js/75035fe198.js"></script>
    </head>

    <body>
        <header>
            <!-- Aqui debe ir el encabezado de la pagina -->
            <h1>Estudiante</h1>
            <div id="main-header" class="py-2 text-light mt-5">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <h1>
                                <i class="fas fa-user-cog"></i> Control estudiante          
                            </h1>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        <jsp:include page="../WEB-INF/paginas/comunes/cabecera.jsp" />

        <main>

            <!-- Aqui va a ir el contenido principal de la pagina -->
            <section id="accions" class="py-4 mb-4">
                <div class="container">
                    <div class="row">
                        <div class="col-12">    
                            <a class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#addModal">
                                Agregar estudiante
                            </a>
                        </div>
                    </div>
                </div>
            </section>
            <div class="modal fade" id="addModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Agregar estudiante</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <form method="POST" action="${pageContext.request.contextPath}/ServletEstudiante" class="was-validated">
                            <div class="modal-body">
                                <div class="mb-3">
                                    <label for="nombre" class="col-form-label">Nombre</label>
                                    <input type="text" class="form-control" id="nombre" name="nombre" required>
                                </div>
                                <div class="mb-3">
                                    <label for="apellido" class="col-form-label">Apellido</label>
                                    <input type="text" class="form-control" id="apellido" name="apellido" required>
                                </div>
                                <div class="mb-3">
                                    <label for="email" class="col-form-label">Email</label>
                                    <input type="email" class="form-control" id="email" name="email" required>
                                </div>
                                <div class="mb-3">
                                    <label for="telefono" class="col-form-label">Teléfono</label>
                                    <input type="tel" class="form-control" id="telefono" name="telefono" required>
                                </div>
                                <div class="mb-3">
                                    <label for="saldo" class="col-form-label">Saldo</label>
                                    <input type="number" class="form-control" id="saldo" name="saldo" step="any" required>
                                </div>
                                <input type="hidden" value="insertar" id="accion" name="accion">
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                                <button type="submit" class="btn btn-primary">Guardar</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <section id="estudiante">
                <div class="container mb-5 pb-5">
                    <div class="row">
                        <div class="col-12 col-md-9">
                            <div class="card">
                                <div class="card-header">
                                    <h4>Listado de estudiantes</h4>
                                </div>
                            </div>
                            <table class="table table-striped">
                                <thead class="table-dark">
                                    <tr>
                                        <th>#</th>
                                        <th>Nombre</th>
                                        <th>Email</th>
                                        <th>Telefono</th>
                                        <th>Saldo/Colegiatura</th>
                                        <th>Editar</th>
                                        <th>Eliminar</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${data}" var="estudiante">
                                        <tr>
                                            <td>${estudiante.id}</td>
                                            <td>${estudiante.nombre} ${estudiante.apellido}</td>
                                            <td>${estudiante.email}</td>
                                            <td>${estudiante.telefono}</td>
                                            <td>${estudiante.saldo}</td>
                                            <td>
                                                <a class="btn btn-danger" 
                                                   href="${pageContext.request.contextPath}/ServletEstudiante?accion=editar&carne=${estudiante.id}">
                                                    <i class="fa-regular fa-file"></i>Editar
                                                </a>
                                            </td>
                                            <td>
                                                <a class="btn btn-secondary" 
                                                   href="${pageContext.request.contextPath}/ServletEstudiante?accion=eliminar&carne=${estudiante.id}">
                                                    <i class="fa-solid fa-ban"></i>Eliminar
                                                </a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>

                        <div class="col-12 col-md-3">
                            <div class="card text-center bg-success text-white mb-3">
                                <div class="card-body">
                                    <h3>Saldo total</h3>
                                    <h4>${totalSaldo}</h4>
                                </div>
                            </div>
                            <div class="card text-center bg-info text-white mb-3">
                                <div class="card-body">
                                    <h3>Total estudiantes</h3>
                                    <h4>${totalEstudiantes}</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <article></article>
                <!-- Aqui se puede organiczar el contenido entre article y section -->
            </section>
        </main>

        <aside>
            <!-- Aqui va el contenido secundario -->
        </aside>

        <jsp:include page="../WEB-INF/paginas/comunes/pie-pagina.jsp" />

        <script type="text/javascript" src="../assets/js/jquery-3.6.0.js"></script>
        <script type="text/javascript" src="../assets/js/bootstrap.bundle.js"></script>
    </body>
</html>