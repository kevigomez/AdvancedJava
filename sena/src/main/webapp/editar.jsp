<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Usuarios</title>
</head>
<body>
    <div class="container">
        <h1>Editar Usuario</h1>
        <form action="RegistroU?opcion=actualizar" method="post">
            <input type="hidden" name="id1" value="<%= ((model.UsuarioVo) req.getAttribute("usuario")).getIdUs() %>">
            <label for="nombre">Nombre:</label>
            <input type="text" name="nombre1" value="<%= ((model.UsuarioVo) req.getAttribute("usuario")).getNombre() %>">
            <label for="correo">Correo electrónico:</label>
            <input type="email" name="correo1" value="<%= ((model.UsuarioVo) req.getAttribute("usuario")).getCorreo() %>">
            <input type="hidden" name="contra1" value="<%= ((model.UsuarioVo) req.getAttribute("usuario")).getContraseña() %>">
            <input type="hidden" name="contra1" value="<%= ((model.UsuarioVo) req.getAttribute("usuario")).getFecharegistro() %>">
        
            <input type="hidden" name="opcion2" value="actualizar">
            <input type="submit" value="Guardar cambios">
        </form>
    </body>
</body>
</html>