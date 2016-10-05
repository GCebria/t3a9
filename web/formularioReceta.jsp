<%-- 
    Document   : formularioReceta
    Created on : 05-oct-2016, 10:35:47
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="auto" scope="request" class="entidad.autorizacion" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Solicitud de autorización</title>
    </head>
    <body>
        <form method="POST" action="formularioRecetas.jsp">
            <h1>Formulario de autorización de practicas médicas</h1> <br>
            Practica : <input type="text" name="nombrePractica" value="" size="26" />
            Cantidad : <input type="text" name="cantidad" value="" size="26" />
            Estado : <input type="text" name="estado" value="" size="26" />
            
         
        </form>
        <jsp:forward page="respuesta.jsp" />
    </body>
</html>
