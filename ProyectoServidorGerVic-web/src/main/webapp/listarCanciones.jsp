<%-- 
    Document   : listarCanciones
    Created on : 02-dic-2016, 16:13:13
    Author     : Gerard
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.dws.domain.Cancion" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado de canciones</title>
    </head>
    <body>
        <h1>Listado de Canciones</h1><br>
        <a href="agregaCancion.jsp">Agregar canción</a><br>
       
        <table border="1">
            <tr>
                <th>ID Cancion</th>
                <th>Nombre</th>
                <th>Album</th>
                <th>Artista</th>
                <th>Duración</th>
                <th>Año</th>
                <th>Precio</th>
                <th></th>
                <th></th>
            </tr>
            <%
                ArrayList<Cancion> canciones = (ArrayList) request.getAttribute("canciones");
                for (Cancion c : canciones) {

                    int id = c.getIdCancion();
                    String nombre = c.getNombre();
                    String album = c.getAlbum();
                    String artista = c.getArtista();
                    int duracion = c.getDuracion();
                    int ano = c.getAno();
                    Double precio = c.getPrecio();

            %>  
            <tr>
                <td><%=id%></td>
                <td><%=nombre%></td>
                <td><%=album%></td>
                <td><%=artista%></td>
                <td><%=duracion%> s.</td>
                <td><%=ano%></td>
                <td><%=precio%> €</td>
                <td><a href="ModificarCancion?accion=editar&id=<%=id%>">Modificar</td>
                <td><a href="eliminaCancionServlet?id=<%=id%>">Borrar</td>
            </tr>


            <%}%>

        </table>
            <br>
            <a href="index.jsp">Volver a inicio</a>
    </body>
</html>
