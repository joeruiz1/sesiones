<%-- 
    Document   : aplicacion.jsp
    Created on : 23/10/2017, 11:07:59 AM
    Author     : Labing I5
--%>

<%@page import="model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession sesion = request.getSession();
    Usuario usuario = (Usuario)sesion.getAttribute("usuario");
    if( usuario == null){
      response.sendRedirect("index.jsp");
    }else{ 

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <a href="Login">Cerrar Sesion</>
    </body>
</html>
<%}%>
