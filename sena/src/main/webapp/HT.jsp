<!DOCTYPE html>
<html>
<head>
	<title>Inicio Sesion</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<style>
		nav {
			background-color: #f1f1f1;
			padding: 10px 20px;
			box-shadow: 0 0 10px rgba(0,0,0,0.1);
		}
		body {
			margin: 0;
			padding: 0;
			font-family: Arial, sans-serif;
			background-color: #f5f5f5;
		}

		header {
			background-color: #0f74b3;
			color: white;
			padding: 10px;
			text-align: center;
		}

		main {
			background-color: white;
			padding: 20px;
			max-width: 500px;
			margin: 0 auto;
			box-shadow: 0 0 10px rgba(0,0,0,0.1);
			margin-top: 25px;
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
		input[type="email"],
		input[type="password"] {
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

		button[type="submit"] {
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

		button[type="submit"]:hover {
			background-color: #47b3fa;
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
		ul {
			list-style: none;
			margin: 0;
			padding: 0;
			display: flex;
			justify-content: space-between;
			align-items: end;
		}

		li {
			margin: 0 10px;
		}

		li a {
			color: #555;
			text-decoration: none;
			padding: 10px;
			border-radius: 5px;
			transition: background-color 1s;
			display: inline-block;
		}

		li a:hover {
			background-color: #ddd;
		}
	</style>
</head>
<body>
	<header>
		<h1>Iniciar Sesion</h1>
	</header>
	
	<nav>
		<ul>
			<li><a href="#">iniciar Sesion</a></li>
			<li><a href="pagina?accion=index">Inicio</a></li>
			<li><a href="pagina?accion=registrarse">Registrarse</a></li>
		</ul>
	</nav>
	<main>
		<form action="pagina?accion=MEf" method="post">
			<label for="nombre">Nombre completo:</label>
			<input type="text" id="nombre" name="nombre" required>
			<label for="password">Contraseña:</label>
			<input type="password" id="password" name="password" required>
            
			<button type="submit" name="accionenv" value="inicioSes">Iniciar Sesion
            </button>
        
		</form>
	</main>
	<footer>
		<p>Derechos reservados © 2023</p>
	</footer>
	
</body>
</html>
