<%-- 
    Document   : formularioReceta
    Created on : 05-oct-2016, 10:35:47
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<jsp:useBean id="autorizacion" scope="request" class="entidad.autorizacionBean" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Solicitud de autorización</title>
    </head>
    <body>
        <% if (request.getParameter("nombrePractica") == null
                    || request.getParameter("cantidad") == null) { %>
        <form method="POST" action="formularioReceta.jsp">
            <h1>Formulario de autorización de practicas médicas</h1> <br>
            Practica : <input type="text" name="nombrePractica" value="" size="26" /><br>
            Cantidad : <input type="text" name="cantidad" value="" size="26" /><br>

            <input type="submit" value="Enviar">
        </form>
        <%} else {
            String practica, estado;
            Integer cantidad;
            Boolean autorizacion;
            Random rd = new Random();
            autorizacion = rd.nextBoolean();
            if (autorizacion == true) {%>
        <jsp:setProperty name="autorizacion" property="estado" value="Aceptada" />
        <%} else {%>
        <jsp:setProperty name="autorizacion" property="estado" value="Rechazada" />
        <%} 
        practica = request.getParameter("nombrePractica");
        cantidad = Integer.parseInt(request.getParameter("cantidad"));

       %>
        <jsp:setProperty name="autorizacion" property="practica" value="<%=practica%>" />
        <jsp:setProperty name="autorizacion" property="cantidad" value="<%=cantidad%>" />

        <jsp:forward page="respuesta.jsp"></jsp:forward>
        <% }%>
    </body>
</html>