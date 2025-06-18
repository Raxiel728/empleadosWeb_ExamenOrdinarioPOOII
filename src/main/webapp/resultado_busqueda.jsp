<%--
  Created by IntelliJ IDEA.
  User: Raziel
  Date: 17/06/2025
  Time: 06:26 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.example.empleadosweb.modelo.Empleado" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Resultado de búsqueda</title>
</head>
<body>
<h2>Resultado de búsqueda</h2>

<%
  Empleado emp = (Empleado) request.getAttribute("empleado");
  if (emp != null) {
%>
<p><strong>No:</strong> <%= emp.getEmpNo() %></p>
<p><strong>Nombre:</strong> <%= emp.getFirstName() %> <%= emp.getLastName() %></p>
<p><strong>Género:</strong> <%= emp.getGender() %></p>
<p><strong>Fecha de contratación:</strong> <%= emp.getHireDate() %></p>
<%
} else {
%>
<p>Empleado no encontrado.</p>
<%
  }
%>

<br>
<a href="buscar.jsp">Realizar otra búsqueda</a>
</body>
</html>