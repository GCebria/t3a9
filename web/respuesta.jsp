<%-- 
    Document   : respuesta
    Created on : 05-oct-2016, 10:49:32
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="autorizacion" scope="request" class="entidad.autorizacionBean" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Respuesta de solicitud</title>
    </head>
    <body>
        <b>Información relativa a la práctica</b>:
        <br><b>Nombre</b>: <jsp:getProperty name="autorizacion" property="practica" />
        <br><b>Cantidad</b>: <jsp:getProperty name="autorizacion" property="cantidad" />
        <br><b>Estado</b>: <jsp:getProperty name="autorizacion" property="estado" />
        <br><b>Motivo</b>: <jsp:getProperty name="autorizacion" property="motivo" />
    </body>
</html>
