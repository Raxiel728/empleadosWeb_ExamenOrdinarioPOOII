<%--
  Created by IntelliJ IDEA.
  User: Raziel
  Date: 17/06/2025
  Time: 06:01 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.*, com.example.empleadosweb.modelo.Departamento" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Lista de Departamentos</title>
</head>
<body>
<h2>Lista de departamentos (página ${pagina})</h2>

<table border="1" cellpadding="5" cellspacing="0">
  <tr>
    <th>ID</th>
    <th>Nombre</th>
  </tr>
  <%
    List<Departamento> departamentos = (List<Departamento>) request.getAttribute("departamentos");
    if (departamentos != null && !departamentos.isEmpty()) {
      for (Departamento d : departamentos) {
  %>
  <tr>
    <td><%= d.getDeptNo() %></td>
    <td><%= d.getDeptName() %></td>
  </tr>
  <%
    }
  } else {
  %>
  <tr>
    <td colspan="2">No se encontraron departamentos.</td>
  </tr>
  <% } %>
</table>

<br>
<a href="departamentos?pagina=<%= ((int) request.getAttribute("pagina")) + 1 %>">Siguiente página →</a>

<% if (((int) request.getAttribute("pagina")) > 1) { %>
| <a href="departamentos?pagina=<%= ((int) request.getAttribute("pagina")) - 1 %>">← Página anterior</a>
<% } %>

</body>
</html>