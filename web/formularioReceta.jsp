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
            String practica, estado, motivo = "error";
            Integer cantidad;
            Boolean aceptacion;
            Random rd = new Random();
            aceptacion = rd.nextBoolean();
            if (aceptacion == true) {
                estado = "Aceptada";
            } else {
                estado = "Rechazada";

                switch (rd.nextInt(3) + 1) {
                    case 1:
                        motivo = "motivo 1";
                        break;
                    case 2:
                        motivo = "motivo 2";
                        break;
                    case 3:
                        motivo = "motivo 3";
                        break;
                    case 4:
                        motivo = "motivo 4";
                        break;
                }

            }
            practica = request.getParameter("nombrePractica");
            cantidad = Integer.parseInt(request.getParameter("cantidad"));
        %>
        <jsp:setProperty name="autorizacion" property="practica" value="<%=practica%>" />
        <jsp:setProperty name="autorizacion" property="cantidad" value="<%=cantidad%>" /> 
        <jsp:setProperty name="autorizacion" property="estado" value="<%=estado%>" />
        <jsp:setProperty name="autorizacion" property="motivo" value="<%=motivo%>" />
        <jsp:forward page="respuesta.jsp"></jsp:forward>
        <% }%>
    </body>
</html>