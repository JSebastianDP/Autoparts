<%@include file = "Sesion/cache.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>        
        
        <title>JSP Page</title>
    </head>
    <body>
          <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
              <a class="navbar-brand" href="HomePrincipal.jsp"><i>AutoParts</i></a>
            <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                    <li class="nav-item active">
                        <a class="nav-link" href="./ControladorProductos?accion=Nuevo"><i class="fas fa-home"></i> Home<span class="sr-only">(current)</span></a>
                    </li>

                    
                    <li class="nav-item">
                        <a class="nav-link" href="./ControladorProductos?accion=carrito"><i class="fas fa-cart-plus">(<label style="color:#FF2323">${cont}</label>)</i> Carrito</a>
                    </li> 


                </ul>
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                    <form  method ="POST" action="ControladorProductos" class="form-inline my-2 my-lg-0">
                    <input  style="width:400px" class="form-control mr-sm-2" name="txtBuscar" id="txtBuscar">
                    <input type="hidden" name="accion" value="Buscar">
                    <button class="btn btn-outline-info my-2 my-sm-0" id="btnBuscar" style="color:#FF2323"><i class="fas fa-search"></i></button>
                     </form> 
                  
                </ul>                                
                <ul class="navbar-nav btn-group my-2 my-lg-0" role="group">
                    <a style="color: white; cursor: pointer" class="dropdown-toggle" data-toggle="dropdown">
                      <i class="fas fa-user-tie"></i> ${email}</a>
                        <div class="dropdown-menu text-center dropdown-menu-right"><br>
             
                        <a class="dropdown-item" href="#"><img src="img/user_1.png" alt="60" height="60"/></a>                        
                        <a class="dropdown-item" href="#" data-toggle="modal" data-target="#myModal">Iniciar Sesion</a>
                        <div class="dropdown-divider"></div>
                       
                        <a class="dropdown-item" href="ControladorProductos?accion=MisCompras">Mis Compras</a>
                        <div class="dropdown-divider"></div>
                        
                        <form method="POST" action="${pageContext.request.contextPath}/Sesiones">
                            <li class="nav-item">
                                <input type="submit" class="nav-link btn btn-primary ms-1" value="Cerrar sesi&#243;n">  >
                            </li>
                        </form> 
                  
                                       
                    </div>
                </ul>     
            </div>
        </nav>
        <a href="ControladorProductos?accion=home">
                                 <div class="contenedor">
                                 <figure class="img-izquierda">
                                 <img class="marco" src="img/maxresdefault.jpg" alt=""/>
                                 <div class="capa">
                                     <h1>Carros</h1>
                                 </div>
                                 </figure>
                                 </a>
                                 <a href="ControladorProductos?accion=home">
                                 <figure class="img-derecha">
                                 <img class="marco" src="img/maxresdefault2.jpg"  alt=""/>
                                 <div class="capa">
                                     <h1>Motos</h1>
                                 </div>
                                 </figure>
                                 </div>
                                 </a>
                        
                        <footer class="pie-pagina">
        <center>
    <div class="grupo-1">
        <div class="box">
            <figure>
                <h2>Sobre Nosotros</h2>
                <p>Somos una grupo de desarrolladores encargados del sistema de información Autoparts </p>
            </figure>
        </div>
        <div class="box">
            <figure>
                <h2>Aquí irá el logo de la compañía</h2>
                <p>:3</p>
            </figure>
        </div>
        <div class="box">
            <figure>
                <h2>Redes Sociales</h2>
                <img class="redes" src="img/face_logo.png" alt=""s/>
                <img class="redes" src="img/twit_logo.png" alt=""/>
            </figure>
        </div>
    
        <center>
    </div>
            <div class="grupo-2">
                <center>
                    <small>&copy; 2022 <b>Andres Olaya, Michel Martinez , Jarrison Mican , Sergio Alonso, Sebastian Diaz</b> - Derechos Reservados<br> </small>
        
                </center>
            </div>
            </center>
</footer>
    </body>
</html>
