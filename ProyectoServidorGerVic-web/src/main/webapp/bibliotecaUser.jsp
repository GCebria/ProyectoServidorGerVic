<%-- 
    Document   : bibliotecaUser
    Created on : 02-dic-2016, 16:12:59
    Author     : Gerard
--%>

<%@page import="com.dws.domain.Cancion"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dws.domain.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% User usuario = (User) request.getAttribute("usuario");
            String nombreU = usuario.getNombre();
            ArrayList<Cancion> canciones = usuario.getCanciones();
        %>
   <h1>Listado de canciones de <%=nombreU%></h1><br>
        
       
        <table border="1">
            <tr>
                <th>Nombre</th>
                <th>Album</th>
                <th>Artista</th>
                <th>Duración</th>
                <th>Año</th>
                <th>Precio</th>
               
            </tr>
            <%
                
                for (Cancion c : canciones) {

                    String nombre = c.getNombre();
                    String album = c.getAlbum();
                    String artista = c.getArtista();
                    int duracion = c.getDuracion();
                    int ano = c.getAno();
                    Double precio = c.getPrecio();

            %>  
            <tr>
                <td><%=nombre%></td>
                <td><%=album%></td>
                <td><%=artista%></td>
                <td><%=duracion%> s.</td>
                <td><%=ano%></td>
                <td><%=precio%> €</td>
                
            </tr>


            <%}%>

        </table>
            <br>
            <a href="listarUsers.jsp">Volver a usuarios</a>
    </body>    
</html>
