<%--
  Created by IntelliJ IDEA.
  User: Raziel
  Date: 17/06/2025
  Time: 05:34 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.*, com.example.empleadosweb.modelo.Empleado" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Lista de Empleados</title>
</head>
<body>
<h2>Lista de empleados (página ${pagina})</h2>

<table border="1" cellpadding="5" cellspacing="0">
  <tr>
    <th>No.</th>
    <th>Nombre</th>
    <th>Apellido</th>
    <th>Género</th>
    <th>Fecha de contratación</th>
  </tr>
  <%
    List<Empleado> empleados = (List<Empleado>) request.getAttribute("empleados");
    if (empleados != null && !empleados.isEmpty()) {
      for (Empleado e : empleados) {
  %>
  <tr>
    <td><%= e.getEmpNo() %></td>
    <td><%= e.getFirstName() %></td>
    <td><%= e.getLastName() %></td>
    <td><%= e.getGender() %></td>
    <td><%= e.getHireDate() %></td>
  </tr>
  <%
    }
  } else {
  %>
  <tr>
    <td colspan="5">No se encontraron empleados.</td>
  </tr>
  <% } %>
</table>

<br>
<a href="empleados?pagina=<%= ((int) request.getAttribute("pagina")) + 1 %>">Siguiente página →</a>

<% if (((int) request.getAttribute("pagina")) > 1) { %>
| <a href="empleados?pagina=<%= ((int) request.getAttribute("pagina")) - 1 %>">← Página anterior</a>
<% } %>
</body>
</html>