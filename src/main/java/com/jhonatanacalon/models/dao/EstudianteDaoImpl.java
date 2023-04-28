package com.jhonatanacalon.models.dao;

import java.util.List;
import java.sql.ResultSet;
import java.sql.Connection;
import java.util.ArrayList;
import java.sql.PreparedStatement;
import com.jhonatanacalon.models.domain.Estudiante;
import com.jhonatanacalon.models.idao.IEstudianteDAO;
import com.jhonatanacalon.db.Conexion;
import java.sql.SQLException;

/**
 *
 * @author informatica
 */
public class EstudianteDaoImpl implements IEstudianteDAO {

    private static final String SQL_SELECT = "SELECT id, nombre, apellido, email, telefono, saldo FROM estudiantes";
    private static final String SQL_DELETE = "DELETE FROM estudiantes WHERE id=?";
    private static final String SQL_INSERT = "INSERT INTO estudiantes (nombre,apellido,email,telefono,saldo) VALUES (?,?,?,?,?)";
    private static final String SQL_UPDATE = "UPDATE estudiantes SET nombre=?,apellido=?,email=?,telefono=?,saldo=? WHERE id=?";
    private static final String SQL_SELECT_BY_ID = "SELECT id, nombre, apellido, email, telefono, saldo FROM estudiantes WHERE id = ?";
    private Connection con;
    private PreparedStatement pstmt;
    private ResultSet rs;
    private Estudiante estudiante = null;
    private List<Estudiante> listaEstudiantes = new ArrayList<>();

    @Override
    public List<Estudiante> getAll() {
        try {
            con = Conexion.getConnection();
            pstmt = con.prepareStatement(SQL_SELECT);
            System.out.println(pstmt.toString());
            rs = pstmt.executeQuery();
            while (rs.next()) {
                estudiante = new Estudiante(rs.getInt("id"), rs.getString("nombre"),
                        rs.getString("apellido"), rs.getString("email"), rs.getString("telefono"), rs.getDouble("saldo"));
                listaEstudiantes.add(estudiante);
            }
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        } catch (Exception e) {
            e.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(pstmt);
            Conexion.close(con);
        }
        return listaEstudiantes;
    }

    @Override
    public int add(Estudiante estudiante) {
        int rows = 0;
        try {
            con = Conexion.getConnection();
            pstmt = con.prepareStatement(SQL_INSERT);
            pstmt.setString(1, estudiante.getNombre());
            pstmt.setString(2, estudiante.getApellido());
            pstmt.setString(3, estudiante.getEmail());
            pstmt.setString(4, estudiante.getTelefono());
            pstmt.setDouble(5, estudiante.getSaldo());
            System.out.println(pstmt.toString());
            rows = pstmt.executeUpdate();
        } catch (SQLException e) {
            System.err.println("Se produjo un error al intentar insertar el siguiente registro: " + estudiante.toString());
            e.printStackTrace(System.out);
        } catch (Exception e) {
            e.printStackTrace(System.out);
        } finally {
            Conexion.close(pstmt);
            Conexion.close(con);
        }
        return rows;
    }

    @Override
    public int update(Estudiante estudiante) {
        int rows = 0;
        try {
            con = Conexion.getConnection();
            pstmt = con.prepareStatement(SQL_UPDATE);
            pstmt.setString(1, estudiante.getNombre());
            pstmt.setString(2, estudiante.getApellido());
            pstmt.setString(3, estudiante.getEmail());
            pstmt.setString(4, estudiante.getTelefono());
            pstmt.setDouble(5, estudiante.getSaldo());
            pstmt.setInt(6, estudiante.getId());
            rows = pstmt.executeUpdate();
        } catch (SQLException e) {
            System.err.println("Se produjo un error al intentar modificar el siguiente registro: " + estudiante.toString());
            e.printStackTrace(System.out);
        } catch (Exception e) {
            e.printStackTrace(System.out);
        } finally {
            Conexion.close(pstmt);
            Conexion.close(con);
        }
        return rows;
    }

    @Override
    public int delete(Estudiante estudiante) {
        int rows = 0;
        try {
            con = Conexion.getConnection();
            pstmt = con.prepareStatement(SQL_DELETE);
            pstmt.setInt(1, estudiante.getId());
            System.out.println(pstmt.toString());
            rows = pstmt.executeUpdate();
        } catch (SQLException e) {
            System.err.println("Se produjo un error al intentar eliminar el registro con el id: " + estudiante.getId());
            e.printStackTrace(System.out);
        } catch (Exception e) {
            e.printStackTrace(System.out);
        } finally {
            Conexion.close(pstmt);
            Conexion.close(con);
        }
        return rows;
    }

    public Estudiante get(Estudiante estudiante) {
        try {
            con = Conexion.getConnection();
            pstmt = con.prepareStatement(SQL_SELECT_BY_ID);
            pstmt.setInt(1, estudiante.getId());
            System.out.println(pstmt.toString());
            rs = pstmt.executeQuery();
            while (rs.next()) {
                estudiante = new Estudiante(rs.getInt("id"), rs.getString("nombre"), rs.getString("apellido"), rs.getString("email"), rs.getString("telefono"), rs.getDouble("saldo"));
            }
            System.out.println("estudiante: " + estudiante);
        } catch (SQLException e) {
            System.out.println("\nSQLException\n");
            e.printStackTrace(System.out);
        } catch (Exception e) {
            e.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(pstmt);
            Conexion.close(con);
        }
        return estudiante;
    }
}
