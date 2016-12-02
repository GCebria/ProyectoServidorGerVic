<%-- 
    Document   : listarUsers
    Created on : 02-dic-2016, 16:13:25
    Author     : Gerard
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.dws.domain.User"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado de usuarios</title>
    </head>
    <body>
        <h1>Listado de usuarios</h1>

        <a href="agregarUser.jsp">Agregar Usuario</a><br>

        <table border="1">
            <tr>
                <th>ID Usuario</th>
                <th>Nombre Usuario</th>
                <th>Email</th>
                <th>Contraseña</th>
                <th>Biblioteca</th>
                <th></th>
                <th></th>
            </tr>
            <%
                ArrayList<User> listaUsuarios = (ArrayList) request.getAttribute("users");
                for (User u : listaUsuarios) {

                    String id = u.getIdUser();
                    String nombre = u.getNombre();
                    String email = u.getEmail();
                    String contrasena = u.getPassword();

            %>  
            <tr>
            
                <td><%=id%></td>
                <td><%=nombre%></td>
                <td><%=email%></td>
                <td><%=contrasena%></td>
                <td><a href="bibliotecaUserServlet?id=<%=id%>">Ver canciones</td>
                <td><a href="ModificarUser?accion=editar&id=<%=id%>">Modificar</td>
                <td><a href="EliminarUser?id=<%=id%>">Borrar</td>
            </tr>


            <%}%>

        </table>
            <br>
            <a href="index.jsp">Volver a inicio</a>
    </body>
</html>
