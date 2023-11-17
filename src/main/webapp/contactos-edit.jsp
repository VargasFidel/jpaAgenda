<%@page import="com.emergentes.entidades.Contacto"%>
<% 
    Contacto contacto =(Contacto)request.getAttribute("contacto");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro de contactos</h1>
        <form action="MainController" method = "post">
            <input type="hidden" name="id" value="<%= contacto.getId() %>">
            <table>
                <tr>
                    <th>Nombre</th>
                    <td><input type="text" name="nombre" value="<%= contacto.getNombre() %>"> </td>
                </tr>
                <tr>
                    <th>Telefono</th>
                    <td><input type="text" name="telefono" value="<%= contacto.getTelefono() %>"> </td>
                </tr>  
                <tr>
                    <th>Correo</th>
                    <td><input type="text" name="correo" value="<%= contacto.getCorreo() %>"> </td>
                </tr>
                 <tr>
                    <th></th>
                    <td><input type="submit" ></td>
                </tr>
            </table>  
        </form>
    </body>
</html>
