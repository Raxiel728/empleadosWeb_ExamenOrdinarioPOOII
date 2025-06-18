package com.example.empleadosweb.dao;


import com.example.empleadosweb.modelo.Empleado;
import com.example.empleadosweb.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class EmpleadoDAO {

    public static List<Empleado> obtenerEmpleadosPaginados(int pagina, int cantidad) {
        List<Empleado> todos = new ArrayList<>();

        try (Connection con = DBConnection.getConnection();
             Statement stmt = con.createStatement();
             ResultSet rs = stmt.executeQuery("SELECT * FROM employees ORDER BY emp_no")) {

            while (rs.next()) {
                Empleado e = new Empleado(
                        rs.getInt("emp_no"),
                        rs.getString("first_name"),
                        rs.getString("last_name"),
                        rs.getString("gender"),
                        rs.getString("hire_date")
                );
                todos.add(e);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        // aplicar paginación con streams
        return todos.stream()
                .skip((long) (pagina - 1) * cantidad)
                .limit(cantidad)
                .collect(Collectors.toList());
    }
}