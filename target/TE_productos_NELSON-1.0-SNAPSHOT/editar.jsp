<%@page import="com.emergentes.modelo.Persona"%>
<% 
    Persona reg = (Persona) request.getAttribute("miobjper");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Gestion de Productos</h1>
        <form action="MainServlet" method="post">
            <table>
                <tr>
                    <td>ID</td>
                    <td><input type="text" name="id" value="<%= reg.getId() %>" size="2" readonly></td>
                </tr>
                <tr>
                    <td>Descripcion</td>
                    <td><input type="text" name="nombres" value="<%= reg.getNombres() %>"></td>
                </tr>
                
                
                
                <tr>
                    <td>Cantidad</td>
                    <td><input type="texto" name="edad" value="<%= reg.getEdad() %>"></td>
                </tr>
                <tr>
                    <td>Precio</td>
                    <td><input type="texto" name="edad1" value="<%= reg.getEdad1() %>"></td>
                </tr>
                
                <tr>
                    <td>Categoria</td>
                    <td><input type="text" name="apellidos" value="<%= reg.getApellidos() %>"></td>
                </tr>
                
                
                <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
