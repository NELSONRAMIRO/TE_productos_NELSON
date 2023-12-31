<%-- 
    Document   : index
    Created on : 12 sept. 2023, 21:08:30
    Author     : NELSON
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Persona"%>
<% 
    if (session.getAttribute("listaper") == null){
        ArrayList<Persona> lisaux = new ArrayList<Persona>();
        session.setAttribute("listaper", lisaux);
    }
    ArrayList<Persona> lista = (ArrayList<Persona>) session.getAttribute("listaper");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Listado de registros</h1>
        <a href="MainServlet?op=nuevo">Nuevo registro</a>
        <table border="1">
            <<tr>
                <th>Id</th>
                <th>Descripcion</th>
                
                <th>Cantidad</th>
                <th>Precio</th>
                <th>Categoria</th>
                <th></th>
                <th></th>
            </tr>
            
            
            <% 
                if (lista != null){
                    for (Persona item : lista){
                
                
            %>
            <tr>
                <td><%= item.getId() %></td>
                <td><%= item.getNombres() %></td>
                
                <td><%= item.getEdad() %></td>
                <td><%= item.getEdad1() %></td>
                <td><%= item.getApellidos() %></td>
                <td>
                    <a href="MainServlet?op=editar&id=<%= item.getId() %>">Editar</a>
                </td>
                <td>
                    <a href="MainServlet?op=eliminar&id=<%= item.getId() %>"
                       onclick="return(confirm('Esta seguro de eliminar?'))"
                       >Eliminar</a>
                </td>
            </tr>
            <% 
                }
             }
            %>
        </table>
    </body>
</html>
