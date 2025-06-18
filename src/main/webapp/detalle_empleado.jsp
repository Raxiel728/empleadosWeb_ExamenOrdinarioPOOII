<%--
  Created by IntelliJ IDEA.
  User: Raziel
  Date: 17/06/2025
  Time: 06:46 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="com.example.empleadosweb.modelo.Empleado" %>
<%@ page import="java.util.List" %>

<%
  Empleado e = (Empleado) request.getAttribute("empleado");
  List<String> titulos = (List<String>) request.getAttribute("titulos");
  List<String> departamentos = (List<String>) request.getAttribute("departamentos");
  List<Integer> salarios = (List<Integer>) request.getAttribute("salarios");
  boolean esGerente = (boolean) request.getAttribute("esGerente");
%>

<html>
<head>
  <title>Detalle del Empleado</title>
</head>
<body>
<h2>Información del empleado</h2>

<% if (e != null) { %>
<p><strong>Número:</strong> <%= e.getEmpNo() %></p>
<p><strong>Nombre:</strong> <%= e.getFirstName() %> <%= e.getLastName() %></p>
<p><strong>Género:</strong> <%= e.getGender() %></p>
<p><strong>Fecha de contratación:</strong> <%= e.getHireDate() %></p>
<p><strong>¿Es gerente?:</strong> <%= esGerente ? "Sí" : "No" %></p>

<h3>Títulos</h3>
<ul>
  <% for (String t : titulos) { %>
  <li><%= t %></li>
  <% } %>
</ul>

<h3>Departamentos</h3>
<ul>
  <% for (String d : departamentos) { %>
  <li><%= d %></li>
  <% } %>
</ul>

<h3>Salarios</h3>
<ul>
  <% for (Integer s : salarios) { %>
  <li>$<%= s %></li>
  <% } %>
</ul>
<% } else { %>
<p>Empleado no encontrado.</p>
<% } %>

<br>
<a href="empleados.jsp">← Volver a la lista de empleados</a>
</body>
</html>