<%@page import="proyectoServicio.demo.jpa.entity.UsuarioJPA"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    
	<title> Tour MachuPicchu</title>
	
	<!-- IMPORTANDO LIBRERIA JSTL CORE, FMT  -->
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
	<!--ini :css -->
	<jsp:include page="../importCss.jsp"/>
	<!--fin :css -->
	<!-- ini:calendar -->
	<jsp:include page="../calendar.jsp" />
	<!-- fin:calendar -->
	
	<link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
      crossorigin="anonymous"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
    />
    
    <link href="css/cssProductService.css" rel="stylesheet" />
	
	
</head>
<body id="page-top">
<!-- ini:validamos session -->
 <% 
boolean valido = false;
UsuarioJPA usuario = (UsuarioJPA)session.getAttribute("usuarioSession");

if(usuario == null)valido = false;
else {valido = true;}

if(!valido){
response.sendRedirect("login.jsp");
 }
 %> 
<!-- fin:validamos session -->
	<!--  Pagina Incio -->
    <div id="wrapper">
    
    	<!-- ini: Menu dinamico -->
		<jsp:include page="../menuPrincipal.jsp"/>
        <!-- fin Menu dinamico  -->
    	

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">
        
        	<div id="content">
        		
        		<!-- ini: Navbar principal -->
	            <jsp:include page="../navbarPrincipal.jsp"/>
	        	<!-- fin:navbar principal -->
	        	
	        	<div class="container " >
			      <div class="row  justify-content-md-center">
			        <div class="col-md-5 ">
			          <div
			            id="carouselExampleControls"
			            class="carousel slide"
			            data-bs-ride="carousel"
			          >
			            <div class="carousel-inner">
			              <div class="carousel-item active">
			                <img
			                  src="<c:out value='${objLugarTuristico.urlImagen1}'></c:out>"
			                  class="d-block w-100"
			                  alt="..."
			                  width="200px"
			                  height="400px"
			                />
			              </div>
			              <div class="carousel-item">
			                <img
			                  src="<c:out value='${objLugarTuristico.urlImagen2}'></c:out>"
			                  class="d-block w-100"
			                  alt="..."
			                  width="200px"
			                  height="400px"
			                />
			              </div>
			              <div class="carousel-item">
			                <img
			                  src="<c:out value='${objLugarTuristico.urlImagen3}'></c:out>"
			                  class="d-block w-100"
			                  alt="..."
			                  width="200px"
			                  height="400px"
			                />
			              </div>
			            </div>
			            <a
			              class="carousel-control-prev"
			              href="#carouselExampleControls"
			              role="button"
			              data-bs-slide="prev"
			            >
			              <span
			                class="carousel-control-prev-icon"
			                aria-hidden="true"
			              ></span>
			              <span class="visually-hidden">Previous</span>
			            </a>
			            <a
			              class="carousel-control-next"
			              href="#carouselExampleControls"
			              role="button"
			              data-bs-slide="next"
			            >
			              <span
			                class="carousel-control-next-icon"
			                aria-hidden="true"
			              ></span>
			              <span class="visually-hidden">Next</span>
			            </a>
			          </div>
			        </div>
			        
			       
			        
					     
					        
					        <div class="col-md-5">
					        	
						          <p class="tour text-center">Free</p>
						          <h2>Tour  <c:out value='${objLugarTuristico.nombre}'></c:out></h2>
						          <p>Servicio c�digo: <c:out value='${objLugarTuristico.codigoLugarTuristico}'></c:out></p>
			
				          		<p><b>Puntuaci�n: </b></p>
						          <c:forEach begin="1" step="1"  end='${objLugarTuristico.calificacionEstrellas}' >
						          		<span class="fa fa-star checked"></span>
						          </c:forEach>			          
						          
						          
						          <p class="precio">S/. <c:out value='${objLugarTuristico.precioXpersona}'></c:out> </p>
						          <p><b>Habilitado/Deshabilitado: </b><c:out value='${objLugarTuristico.habilitadoODeshabilitado}'></c:out></p>
						          <p><b>Clima: </b><c:out value='${objLugarTuristico.climaTour}'></c:out></p>
						          <p><b>Servicios: </b></p>
						        
							          <c:forEach var="lstServiciosIncluidos" items="${lstServiciosIncluidos}">
								          <ul class="list-group list-group-flush">
			
								            	<li class="list-group-item">${lstServiciosIncluidos.nombreServicio}</li>   
								          </ul>	
							          </c:forEach>
							         
							         <form autocomplete="off" action="ServletInfoTour"  method="post" novalidate>
							         
								         <p><b>Fecha de Viaje : </b><p>
								         <div class="form-group row">
											<div class="col-lg-9">
												<input class="form-control" id="datepicker" width="276"
													name="fecha_viaje" value="" required >
												<div class="valid-feedback">Dato ingresado correctamente</div>
												<div class="invalid-feedback">complete el campo</div>
												<script>
								                  $('#datepicker').datepicker({
								                    datepicker: true,
								                    uiLibrary : 'bootstrap4',
								                    locale: 'es-es',
								                    format:'yyyy-mm-dd'
								                  });
										  		</script>
											</div>
										</div>
							          
							          <br />

							          <input type="hidden" name="hdnLugaresTuristicos" value="${idLugarTuristico}"/><!-- es una variable oculta o un comodin -->
							          	  
							          <label>Cantidad: </label>
							          <select name="cantidad" id="cars">
							            <option value="1" >1</option>
							            <option value="2">2</option>
							            <option value="3">3</option>
							            <option value="4">4</option>
							            <option value="5">5</option>
							            <option value="6">6</option>
							            <option value="7">7</option>
							            <option value="8">8</option>
							            <option value="9">9</option>
							            <option value="10">10</option>
							          </select>
							          	<input type="submit" class="btn btn-primary" value="Agregar al carrito" >
							         
						          </form>

					        </div>
			      </div>
			    </div>
        	</div>	
        	<!--ini :footer -->
			<jsp:include page="../pages/footer.jsp"/>
			<!--fin :footer -->  
        </div>   
    </div>
</body>
	<!--ini:Js -->
	<jsp:include page="../importJs.jsp"/>	
	<!--fin:Js -->   
	
	
 
</html>