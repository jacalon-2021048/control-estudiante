<%-- 
    Document   : editar-estudiante
    Created on : 18/08/2022, 10:18:34
    Author     : informatica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:setLocale value="es_GT" />
<!DOCTYPE html>
<html lang="es">
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
            <div class="container">
                <div class="row">
                    <div class="col-1  col-md-1">
                    </div>
                    <div class="col-10 col-md-10">
                        <div class="container">
                            <div class="row">                                
                                <div class="col-4 m-2">
                                    <a class="btn btn-secondary" href="${pageContext.request.contextPath}/ServletEstudiante?accion=listar">
                                        <i class="fa fa-arrow-left"></i> Regresar al listado
                                    </a>
                                </div>
                            </div>                                        
                        </div>
                        <div class="card">
                            <div class="card-header">
                                <h4>Editar estudiante</h4>                                
                            </div>
                        </div>
                        <form method="POST" action="${pageContext.request.contextPath}/ServletEstudiante" class="was-validated">                    
                            <div class="modal-body">
                                <div class="mb-3">
                                    <label for="id" class="col-form-label">Numero registro</label>
                                    <input type="number" class="form-control" id="id" name="id" value="${estudiante.getId()}" readonly>
                                </div>
                                <div class="mb-3">
                                    <label for="nombre" class="col-form-label">Nombre</label>
                                    <input type="text" class="form-control" id="nombre" name="nombre" value="${estudiante.getNombre()}" required>
                                </div>
                                <div class="mb-3">
                                    <label for="apellido" class="col-form-label">Apellido</label>
                                    <input type="text" class="form-control" id="apellido" name="apellido" value="${estudiante.getApellido()}" required>
                                </div>
                                <div class="mb-3">
                                    <label for="email" class="col-form-label">Email</label>
                                    <input type="email" class="form-control" id="email" name="email" value="${estudiante.getEmail()}" required>
                                </div>
                                <div class="mb-3">
                                    <label for="telefono" class="col-form-label">Teléfono</label>
                                    <input type="tel" class="form-control" id="telefono" name="telefono" value="${estudiante.getTelefono()}" required>
                                </div>
                                <div class="mb-3">
                                    <label for="saldo" class="col-form-label">Saldo</label>
                                    <input type="number" class="form-control" id="saldo" name="saldo" value="${estudiante.getSaldo()}" step="any" required>
                                </div>
                                <input type="hidden" name="accion" value="actualizar">
                            </div>
                            <div class="container mb-5">
                                <div class="row">
                                    <div class="col-6 text-center">
                                        <button type="submit" class="btn btn-success">
                                            <i class="fa fa-check"></i> Guardar cambios
                                        </button>
                                    </div>
                                    <div class="col-6 text-center">
                                        <a class="btn btn-danger" href="${pageContext.request.contextPath}/ServletEstudiante?accion=eliminar&carne=${estudiante.id}">
                                            <i class="fa fa-trash"></i> Eliminar estudiante
                                        </a>
                                    </div>
                                </div>                                        
                            </div> 
                        </form>                        
                    </div>                    
                    <div class="col-1  col-md-1">
                    </div>
                </div>
            </div>
        </main>

        <jsp:include page="../WEB-INF/paginas/comunes/pie-pagina.jsp" />

        <script type="text/javascript" src="../assets/js/jquery-3.6.0.js"></script>
        <script type="text/javascript" src="../assets/js/bootstrap.bundle.js"></script>
    </body>
</html>