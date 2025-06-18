<%--
  Created by IntelliJ IDEA.
  User: Raziel
  Date: 17/06/2025
  Time: 06:23 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Buscar Empleado</title>
</head>
<body>
<h2>Buscar empleado por número</h2>

<form action="buscar-empleado" method="post">
  <label>Número de empleado:</label>
  <input type="number" name="empNo" required />
  <input type="submit" value="Buscar" />
</form>

<br>
<a href="index.jsp">Volver al inicio</a>
</body>
</html>