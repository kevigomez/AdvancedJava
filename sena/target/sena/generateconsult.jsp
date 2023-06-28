<!DOCTYPE html>
<html>
<head>
	<title>Red Social</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
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

		nav {
			background-color: #e5e5e5;
			padding: 10px;
			height: 100vh;
			position: fixed;
			left: 0;
			top: 0;
			overflow-y: auto;
			width: 250px;
		}

		nav h3 {
			color: #0f74b3;
			margin: 0 0 10px;
			padding: 10px 0;
			text-align: center;
		}

		nav ul {
			list-style-type: none;
			margin: 0;
			padding: 0;
		}

		nav li a {
			display: block;
			color: #0f74b3;
			text-align: left;
			padding: 10px 16px;
			text-decoration: none;
			border-radius: 5px;
			transition: background-color 0.3s;
		}

		nav li a:hover {
			background-color: #0f74b3;
			color: white;
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

		form {
			display: flex;
			flex-wrap: wrap;
			justify-content: space-between;
		}

		label {
			display: block;
			margin-bottom: 5px;
			font-weight: bold;
			color: #555;
			width: 100%;
		}

		input[type="text"],
		input[type="email"] {
			display: block;
			width: 100%;
			padding: 10px;
			border: 1px solid #ccc;
			border-radius: 5px;
			margin-bottom: 20px;
			font-size: 16px;
			color: #555;
			background-color: #f7f7f7;
		}

		input[type="submit"] {
            margin-left: 37%;
			background-color: #0e6ca5;
			color: white;
			padding: 10px 20px;
			border: none;
			border-radius: 5px;
			font-size: 16px;
			cursor: pointer;
			transition: background-color 0.3s;
		}

		input[type="submit"]:hover {
			background-color: #47b3fa;
		}
		.b {
             text-align: center;
			 color: #0e6ca5;
		}
	</style>
</head>
<body>
	<header>
		<h1>Facebook</h1>
	</header>
	<main>
		
		<form name="form1" action="#" method="post" style="display:none" >
			<h1 class="b">Buscar Amigo</h1>
			<label >Nombre completo:</label>
			<input type="text" id="nombre" name="nombre" required>

			<label >Correo electrónico:</label>
			<input type="email" id="email" name="email" required>
            
			<input type="submit" value="Buscar">
        
		</form>

		<form name="form2" action="Amigo" method="post" style="display:none" >
			<h1 class="b">Añadir Amigo</h1>
			<label >Nombre completo:</label>
			<input type="text" id="nombre" name="nombre" required>
			<input type="submit" value="Buscar">
        
		</form>


		<form name="form3" action="pagina" method="post" style="display:none">
			<h1 class="b">Publicacion</h1>
			<label>Contenido:</label>
			<input type="text" id="nombre" name="nombre" required>
			<input type="submit" value="Publicar">
		</form>
	</main>
		<nav>
			<h3>Menú</h3>
			<ul>
				<li><a href="#" onclick="hideshow2()">Añadir Amigo</a></li>
				<li><a href="#" onclick="hideshow()">Buscar Amigos</a></li>
				<li><a href="#" onclick="hideshow3()">Hacer Publicacion</a></li>
                <li><a href="usuario?accion=consultar" >Consultar Usuarios</a></li>
				<li><a href="pagina?accion=index">Salir</a></li>
			</ul>
		</nav>
		<div class="content">
		</div>

	<footer>
		<p>Derechos reservados © 2023</p>
	</footer>
	<script>
	function hideshow(){
		var frm=document.form1;
		if(frm.style.display=="block"){frm.style.display="none"}
		else
		if(frm.style.display=="none"){frm.style.display="block"}
		}
	function hideshow2(){
		var frm=document.form2;
		if(frm.style.display=="block"){frm.style.display="none"}
		else
		if(frm.style.display=="none"){frm.style.display="block"}
		}
	function hideshow3(){
		var frm=document.form3;
		if(frm.style.display=="block"){frm.style.display="none"}
		else
		if(frm.style.display=="none"){frm.style.display="block"}
		}
		</script>

</body>
</html>