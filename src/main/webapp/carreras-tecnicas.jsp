<%-- 
    Document   : carreras-tecnicas
    Created on : 18/08/2022, 09:15:47
    Author     : informatica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es-GT">
    <head>
        <title>Fundación Kinal</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="./assets/css/hoja-estilo-kinal.css" />
        <link rel="stylesheet" type="text/css" href="./assets/css/flexslider.css" />        
        <link rel="stylesheet" type="text/css" href="./assets/css/bootstrap.css"/>
    </head>

    <body>
        <header>
            <!-- Aqui debe ir el encabezado de la pagina -->
            <h1>Carreras Técnicas</h1>          
        </header>

        <jsp:include page="./WEB-INF/paginas/comunes/cabecera.jsp" />

        <main>
            <!-- Aqui va a ir el contenido principal de la pagina -->
            <!--<div class="container">
                <div class="row">
                    <div class="col col-sm-12 col-md-3"><p>Mecánica automotriz</p></div>
                    <div class="col col-sm-12 col-md-3"><p>Electricidad industrial</p></div>
                    <div class="col col-sm-12 col-md-3"><p>Electronica industrial</p></div>
                    <div class="col col-sm-12 col-md-3"><p>Informatica</p></div>
                </div>
                <div class="row">
                    <div class="col col-sm-12 col-md-3"><img class="img-carreras" src="./assets/image/mecanica.webp" /></div>
                    <div class="col col-sm-12 col-md-3"><img class="img-carreras" src="./assets/image/electricidad.webp" /></div>
                    <div class="col col-sm-12 col-md-3"><img class="img-carreras" src="./assets/image/electronica.webp" /></div>
                    <div class="col col-sm-12 col-md-3"><img class="img-carreras" src="./assets/image/informatica.webp" /></div>
                </div>
                <div class="row">
                    <div class="col col-sm-12 col-md-3">
                        <p>
                            Autoestudio Universidad Honda Japón, 
                            mecanismos servo asistidos, mecánica de motores diésel y gasolina
                            , sistemas de ignición e inyección. Diagnóstico computarizado.
                        </p>
                    </div>
                    <div class="col col-sm-12 col-md-3">
                        <p>
                            Cableado estructurado, instalaciones eléctricas domiciliares, 
                            comerciales e industriales, soldadura exotérmica, transferencias eléctricas, 
                            motores eléctricos, automatización industrial, domótica, energías renovables
                        </p>
                    </div>
                    <div class="col col-sm-12 col-md-3">
                        <p>
                            Electrónica analógica, digital y de potencia, micro controladores, máquinas eléctricas, 
                            controladores lógicos programables, redes industriales, electroneumática, robótica
                        </p>
                    </div>
                    <div class="col col-sm-12 col-md-3">
                        <p>
                            Desarrollo de aplicaciones web y móviles con Java, Microsoft,
                            Visual Studio, Oracle y diseño de redes informáticas con Cisco System.
                        </p>
                    </div>
                </div>
            </div>-->
            <section>
                <article>
                    <div class="container">
                        <div class="row">
                            <div class="col-12">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                                            <div class="col-12"><p>Mecánica automotriz</p></div>
                                            <div class="col-12"><img class="img-carreras img-fluid img-thumbnail" src="./assets/image/mecanica.webp" /></div>
                                            <div class="col-12">
                                                <p>
                                                    Autoestudio Universidad Honda Japón, 
                                                    mecanismos servo asistidos, mecánica de motores diésel y gasolina
                                                    , sistemas de ignición e inyección. Diagnóstico computarizado.
                                                </p>
                                            </div>
                                        </div>
                                        <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                                            <div class="col-12">
                                                <div class="col-12"><p>Electricidad industrial</p></div>
                                                <div class="col-12"><img class="img-carreras img-fluid img-thumbnail" src="./assets/image/electricidad.webp" /></div>
                                                <div class="col-12">
                                                    <p>
                                                        Cableado estructurado, instalaciones eléctricas domiciliares,
                                                        comerciales e industriales, soldadura exotérmica, transferencias eléctricas, 
                                                        motores eléctricos, automatización industrial, domótica, energías renovables
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                                            <div class="col-12">
                                                <div class="col-12"><p>Electronica industrial</p></div>
                                                <div class="col-12"><img class="img-carreras img-fluid img-thumbnail" src="./assets/image/electronica.webp" /></div>
                                                <div class="col-12">
                                                    <p>
                                                        Electrónica analógica, digital y de potencia, micro controladores, máquinas eléctricas, 
                                                        controladores lógicos programables, redes industriales, electroneumática, robótica
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                                            <div class="col-12">
                                                <div class="col-12"><p>Informatica</p></div>
                                                <div class="col-12"><img class="img-carreras img-fluid img-thumbnail" src="./assets/image/informatica.webp" /></div>
                                                <div class="col-12">
                                                    <p>
                                                        Desarrollo de aplicaciones web y móviles con Java, Microsoft,
                                                        Visual Studio, Oracle y diseño de redes informáticas con Cisco System.
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>                                
                            </div>
                        </div>
                    </div>
                </article>
            </section>
        </main>

        <aside>
            <!-- Aqui va el contenido secundario -->
        </aside>

        <jsp:include page="./WEB-INF/paginas/comunes/pie-pagina.jsp" />
        
        <script type="text/javascript" src="./assets/js/jquery-3.6.0.js"></script>
        <script type="text/javascript" src="./assets/js/jquery.flexslider.js"></script>
        <script type="text/javascript" src="./assets/js/script.js"></script>
        <script type="text/javascript" src="./assets/js/bootstrap.bundle.js"></script>
    </body>
</html>