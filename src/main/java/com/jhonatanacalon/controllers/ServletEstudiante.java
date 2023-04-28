package com.jhonatanacalon.controllers;

import com.jhonatanacalon.models.dao.EstudianteDaoImpl;
import com.jhonatanacalon.models.dao.EstudianteDaoJPA;
import com.jhonatanacalon.models.domain.Estudiante;
import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

/**
 *
 * @author informatica
 */
@WebServlet("/ServletEstudiante")
public class ServletEstudiante extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("UTF-8");
        String accion = request.getParameter("accion");
        if (accion != null) {
            switch (accion) {
                case "insertar":
                    insertarEstudiante(request, response);
                    break;
                case "actualizar":
                    actualizarEstudiante(request, response);
                    break;
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("UTF-8");
        String accion = request.getParameter("accion");
        if (accion != null) {
            switch (accion) {
                case "listar":
                    listarEstudiantes(request, response);
                    break;

                case "editar":
                    editarEstudiante(request, response);
                    break;

                case "eliminar":
                    eliminarEstudiantes(request, response);
                    break;
            }
        }
    }

    private void eliminarEstudiantes(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("carne"));
        Estudiante estudiante = new Estudiante(id);
        //int registroEliminado=new EstudianteDaoImpl().delete(estudiante);
        int registroEliminado = new EstudianteDaoJPA().delete(estudiante);
        System.out.println("Cantidad de registros eliminados: " + registroEliminado);

        if (registroEliminado >= 1) {
            System.out.println("El registro se elimino con exito");
        } else {
            System.out.println("Se produjo un error al intentar eliminar el siguiente estudiante: " + estudiante.toString());
        }
        listarEstudiantes(request, response);
    }

    private double calculoSaldoTotal(List<Estudiante> listaEstudiante) {
        double saldoTotal = 0.0;
        for (Estudiante estudiante : listaEstudiante) {
            saldoTotal += estudiante.getSaldo();
        }
        return saldoTotal;
    }

    private void listarEstudiantes(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //   List<Estudiante> listaEstudiantes=new EstudianteDaoImpl().getAll();
        List<Estudiante> listaEstudiantes = new EstudianteDaoJPA().getAll();
        HttpSession sesion = request.getSession();
        sesion.setAttribute("data", listaEstudiantes);
        sesion.setAttribute("totalEstudiantes", listaEstudiantes.size());
        sesion.setAttribute("totalSaldo", calculoSaldoTotal(listaEstudiantes));
        response.sendRedirect("estudiante/estudiante.jsp");
    }

    private void insertarEstudiante(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String email = request.getParameter("email");
        String telefono = request.getParameter("telefono");
        double saldo = Double.parseDouble(request.getParameter("saldo"));
        Estudiante estudiante = new Estudiante(nombre, apellido, email, telefono, saldo);
        System.out.println(estudiante.toString());
        //int registrosInsertados=new EstudianteDaoImpl().add(estudiante);
        int registrosInsertados = new EstudianteDaoJPA().add(estudiante);
        listarEstudiantes(request, response);
    }

    private void editarEstudiante(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //recuperar el id del estudiante
        int id = Integer.parseInt(request.getParameter("carne"));
        //crear un objeto de tipo estudiante
        Estudiante estudiante = new EstudianteDaoImpl().get(new Estudiante(id));
        HttpSession sesion = request.getSession();
        sesion.setAttribute("estudiante", estudiante);
        response.sendRedirect(request.getContextPath() + "/" + "estudiante/editar-estudiante.jsp");
    }

    private void actualizarEstudiante(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String email = request.getParameter("email");
        String telefono = request.getParameter("telefono");
        double saldo = Double.parseDouble(request.getParameter("saldo"));
        Estudiante estudiante = new Estudiante(id, nombre, apellido, email, telefono, saldo);
        //     int registrosInsertados=new EstudianteDaoImpl().update(estudiante);
        int registrosInsertados = new EstudianteDaoJPA().update(estudiante);
        listarEstudiantes(request, response);
    }
}
