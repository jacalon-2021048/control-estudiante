<%-- 
    Document   : index
    Created on : 18/08/2022, 09:10:02
    Author     : Jhonatan Jose Acalon Ajanel
    Codigo     : IN5BM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es-GT">
    <head>
        <title>Fundación Kinal</title>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="./assets/css/hoja-estilo-kinal.css" />
        <link rel="stylesheet" type="text/css" href="./assets/css/flexslider.css" />        
        <link rel="stylesheet" type="text/css" href="./assets/css/bootstrap.css"/>
    </head>

    <body>
        <header>
            <!-- Aqui debe ir el encabezado de la pagina -->
            <h1>Centro Educativo Técnico Laboral Kinal</h1>            
        </header>

        <!-- Importando cabecera -->
        <jsp:include page="./WEB-INF/paginas/comunes/cabecera.jsp" />

        <div class="container">
            <div class="row">
                <div class="col-1 col-sm-2 col-md-0"></div>
                <div class="col-10 col-sm-8 col-md-12">
                    <p class="descripcion">
                        Kinal es un Centro Educativo privado, no lucrativo, dirigido a la 
                        formación técnica profesional de jóvenes y adultos, de beneficio 
                        colectivo y asistencia social en favor de los sectores más 
                        necesitados de la comunidad.
                    </p>
                    <p class="descripcion">
                        Nuestro valor fundamental es enseñar a realizar el trabajo bien 
                        hecho, que sea la base de la superación de alumnos y el medio para 
                        servir a los demás.
                    </p>
                </div>
                <div class="col-1 col-sm-2 col-md-0"></div>
            </div>
        </div>

        <main>
            <!-- Aqui va a ir el contenido principal de la pagina -->
            <div class="container">
                <div class="row">
                    <div class="col-1 col-sm-2 col-md-0"></div>
                    <div class="col-10 col-sm-8 col-md-12">
                        <section id="slider-kinal">
                            <div id="carouselExampleIndicators" class="carousel carousel-dark slides" data-bs-ride="carousel">
                                <div class="carousel-indicators">
                                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
                                </div>
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <img src="./assets/image/colegio_kinal.webp" class="d-block w-100" alt="50">
                                    </div>
                                    <div class="carousel-item">
                                        <img src="./assets/image/kinal aniversario 60.webp" class="d-block w-100" alt="50">
                                    </div>
                                    <div class="carousel-item">
                                        <img src="./assets/image/logo_kinal.png" class="d-block w-100" alt="50">
                                    </div>
                                    <div class="carousel-item">
                                        <img src="./assets/image/fundacion_kinal.png" class="d-block w-100" alt="50">
                                    </div>
                                </div>
                                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                    <span class="visually-hidden">Previous</span>
                                </button>
                                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                    <span class="visually-hidden">Next</span>
                                </button>
                            </div>
                        </section>
                    </div>
                    <div class="col-1 col-sm-2 col-md-0"></div>
                </div>
            </div>
        </main>
        <aside>
            <!-- Aqui va el contenido secundario -->
        </aside>
        
        <jsp:include page="./WEB-INF/paginas/comunes/pie-pagina.jsp" />
        
        <!-- Aca agregamos el javascript-->
        <script type="text/javascript" src="./assets/js/jquery-3.6.0.js"></script>
        <script type="text/javascript" src="./assets/js/jquery.flexslider.js"></script>
        <script type="text/javascript" src="./assets/js/script.js"></script>
        <script type="text/javascript" src="./assets/js/bootstrap.bundle.js"></script>        
    </body>
</html>