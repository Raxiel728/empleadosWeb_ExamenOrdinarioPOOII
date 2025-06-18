<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Inicio - Sistema de Empleados</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #eaf6ee; /* verde bajito */
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background: white;
            padding: 40px 60px;
            border-radius: 12px;
            box-shadow: 0 4px 16px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .container img {
            width: 120px;
            margin-bottom: 20px;
        }

        h1 {
            color: #0056a3; /* azul UV */
            margin-bottom: 20px;
        }

        ul {
            list-style: none;
            padding: 0;
        }

        li {
            margin: 16px 0;
        }

        a {
            text-decoration: none;
            font-size: 18px;
            color: #079247; /* verde UV */
            font-weight: bold;
            transition: color 0.3s;
        }

        a:hover {
            color: #0056a3; /* azul UV */
        }
    </style>
</head>
<body>
<div class="container">
    <img src="img/Logo_de_la_Universidad_Veracruzana.png" alt="Logo UV">
    <h1>Bienvenido al sistema de empleados</h1>
    <p>Selecciona una opción:</p>
    <ul>
        <li><a href="empleados">👥 Ver empleados (50 por página)</a></li>
        <li><a href="departamentos">🏢 Ver departamentos</a></li>
        <li><a href="buscar.jsp">🔍 Buscar empleado por número</a></li>
    </ul>
</div>
</body>
</html>