<%-- 
    Document   : formularioReceta
    Created on : 05-oct-2016, 10:35:47
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="autorizacion" scope="request" class="entidad.autorizacionBean" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Solicitud de autorización</title>
    </head>
    <body>
        <% if (request.getParameter("nombrePractica") == null
                    || request.getParameter("cantidad") == null
                    || request.getParameter("estado") == null){ %>
        <form method="POST" action="formularioRecetas.jsp">
            <h1>Formulario de autorización de practicas médicas</h1> <br>
            Practica : <input type="text" name="nombrePractica" value="" size="26" /><br>
            Cantidad : <input type="text" name="cantidad" value="" size="26" /><br>
            Estado : <input type="text" name="estado" value="" size="26" /><br>
            <input type="submit" value="Enviar">
        </form>
        <%}else{ %>
             <%String nPractica, cant, estad; %>
             <% 
             nPractica= request.getParameter("nombrePractica"); 
             cant = request.getParameter("cantidad");
             estad = request.getParameter("estado");
             %>
             <jsp:setProperty name="autorizacion" property="nombrePractica" value="<%=nPractica%>" />
             
             <jsp:setProperty name="autorizacion" property="cantidad" value="<%=cant%>" />
             <jsp:setProperty name="autorizacion" property="estado" value="<%=estad%>" />
             <jsp:forward page="respuesta.jsp" />
             <% } %>
    </body>
</html>
