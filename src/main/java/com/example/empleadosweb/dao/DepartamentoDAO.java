package com.example.empleadosweb.dao;

import com.example.empleadosweb.modelo.Departamento;
import com.example.empleadosweb.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class DepartamentoDAO {

    public static List<Departamento> obtenerDepartamentosPaginados(int pagina, int cantidad) {
        List<Departamento> todos = new ArrayList<>();

        try (Connection con = DBConnection.getConnection();
             Statement stmt = con.createStatement();
             ResultSet rs = stmt.executeQuery("SELECT * FROM departments ORDER BY dept_no")) {

            while (rs.next()) {
                Departamento d = new Departamento(
                        rs.getString("dept_no"),
                        rs.getString("dept_name")
                );
                todos.add(d);
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