package com.example.empleadosweb;

import com.example.empleadosweb.dao.EmpleadoDAO;
import com.example.empleadosweb.modelo.Empleado;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet("/buscar-empleado")
public class BuscarEmpleadoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int empNo = Integer.parseInt(request.getParameter("empNo"));

        List<Empleado> empleados = EmpleadoDAO.obtenerEmpleadosPaginados(1, Integer.MAX_VALUE);
        Empleado empleado = empleados.stream()
                .filter(e -> e.getEmpNo() == empNo)
                .findFirst()
                .orElse(null);

        if (empleado != null) {
            request.setAttribute("empleado", empleado);
            request.setAttribute("titulos", EmpleadoDAO.obtenerTitulosPorEmpleado(empNo));
            request.setAttribute("salarios", EmpleadoDAO.obtenerSalariosPorEmpleado(empNo));
            request.setAttribute("departamentos", EmpleadoDAO.obtenerDepartamentosPorEmpleado(empNo));
            request.setAttribute("esGerente", EmpleadoDAO.esGerente(empNo));
        }

        request.getRequestDispatcher("detalle_empleado.jsp").forward(request, response);
    }
}