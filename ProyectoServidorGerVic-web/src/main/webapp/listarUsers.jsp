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
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <title>Listado de usuarios</title>
    </head>
    <body>
        <h1>Listado de usuarios</h1>

        <a href="agregarUser.jsp" class="btn btn-link">Agregar Usuario</a><br>
<div class="well">
        <table class="table">
            <tr>
                <th>ID Usuario</th>
                <th>Nombre Usuario</th>
                <th>Email</th>
                <th>Contraseña</th>
                <th>Biblioteca</th>
                <th>Modificar</th>
                <th>Eliminar</th>
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
                <td><a href="bibliotecaUserServlet?id=<%=id%>">Canciones <i class="fa fa-music" aria-hidden="true"></i>
</td>
                <td><a href="ModificarUser?accion=editar&id=<%=id%>"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>
</td>
                <td><a href="EliminarUser?id=<%=id%>"><i class="fa fa-trash-o" aria-hidden="true"></i></td>
            </tr>


            <%}%>

        </table></div>
            <br>
            <a href="index.jsp" class="btn btn-primary">Volver a inicio</a>
    </body>
</html>
