<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="model.UsuarioVo" %>
<!DOCTYPE html>
<html>
<head>
    <title>Mostrar Usuarios</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        header {
            background-color: #0f74b3;
            color: white;
            padding: 10px;
            text-align: center;
        }

        footer {
            background-color: #0f4a6f;
            color: white;
            padding: 10px;
            text-align: center;
            position: fixed;
            bottom: 0;
            width: 100%;
        }

        .content {
            margin: 20px;
            flex-grow: 1;
            flex-basis: 0;
            min-width: 0;
        }

        .content h2 {
            margin-top: 0;
        }

        main {
            background-color: white;
            padding: 20px;
            max-width: 500px;
            margin: 0 auto;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 10px;
            border: 1px solid #ccc;
        }

        th {
            background-color: #0f74b3;
            color: white;
            text-align: center;
        }

        td {
            text-align: center;
        }

        .b {
            text-align: center;
            color: #0e6ca5;
        }

        .btn {
            margin-bottom: 20px;
        }

        .btn a {
            display: block;
            width: 120px;
            margin: 0 auto;
            background-color: #0e6ca5;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            text-align: center;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .btn a:hover {
            background-color: #47b3fa;
        }

        .btn-modificar, .btn-eliminar {
            display: inline-block;
            background-color: #0e6ca5;
            color: white;
            padding: 8px 16px;
            border: none;
            border-radius: 5px;
            font-size: 14px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .btn-modificar:hover, .btn-eliminar:hover {
            background-color: #47b3fa;
        }
    </style>
</head>
<body>
<header>
    <h1>Facebook</h1>
</header>
<div class="content">
    <h1>Listado de Usuarios</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Correo</th>
            <th>Fecha de Registro</th>
            <th>Modificar</th>
            <th>Eliminar</th>
        </tr>
        <% List<UsuarioVo> usuarioCon = (List<UsuarioVo>) request.getAttribute("usuarioCon"); %>
        <% for (UsuarioVo usuario : usuarioCon) { %>
            <tr>
                <td><%= usuario.getIdUs() %></td>
                <td><%= usuario.getNombre() %></td>
                <td><%= usuario.getCorreo() %></td>
                <td><%= usuario.getFecharegistro() %></td>
                <td><a href="usuario?&id=<%= usuario.getIdUs() %>accion=editar" class="btn-modificar">Modificar</a></td>
                <td><a href="usuario?accion=eliminar&id=<%= usuario.getIdUs() %>" class="btn-eliminar">Eliminar</a></td>
            </tr>
        <% } %>
    </table>
    <div class="btn">
        <a href="pagina?accion=MEf">Volver</a>
    </div>
</div>
<footer>
    <p>Derechos reservados © 2023</p>
</footer>
</body>
</html>
