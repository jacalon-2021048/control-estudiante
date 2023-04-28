package com.jhonatanacalon.models.dao;

import com.jhonatanacalon.db.ConexionPU;
import com.jhonatanacalon.models.domain.Estudiante;
import com.jhonatanacalon.models.idao.IEstudianteDAO;
import java.util.List;

/**
 *
 * @author Jhonatan Jose Acalón Ajanel <jacalon-2021048@kinal.edu.gt>
 * @date 7/09/2022
 * @time 08:43:54
 * @codigo IN5BM
 * @jornada Matutina
 * @grupo 1
 */
public class EstudianteDaoJPA implements IEstudianteDAO {

    private ConexionPU con = ConexionPU.getInstance();

    @Override
    public List<Estudiante> getAll() {
        return con.getEntityManager().createNamedQuery("Estudiante.findAll").getResultList();
    }

    @Override
    public int add(Estudiante estudiante) {
        int rows = 0;
        try {
            con.getEntityManager().getTransaction().begin();
            con.getEntityManager().persist(estudiante);
            con.getEntityManager().getTransaction().commit();
            rows = 1;
        } catch (Exception e) {
            System.out.println("Se produjo un error al insertar el siguiente registro " + estudiante.toString());
            con.getEntityManager().getTransaction().rollback();
            e.printStackTrace(System.out);
        }
        return rows;
    }

    @Override
    public int update(Estudiante estudiante) {
        int rows = 0;
        try {
            con.getEntityManager().getTransaction().begin();
            con.getEntityManager().merge(estudiante);
            con.getEntityManager().getTransaction().commit();
            rows = 1;
        } catch (Exception e) {
            e.printStackTrace(System.out);
            con.getEntityManager().getTransaction().rollback();
        }
        return rows;
    }

    public Estudiante get(Estudiante estudiante) {
        return ((Estudiante) con.getEntityManager()
                .createNamedQuery("Estudiante.find")
                .setParameter("id", estudiante.getId())
                .getSingleResult());
    }

    @Override
    public int delete(Estudiante estudiante) {
        int rows = 0;
        try {
            con.getEntityManager().getTransaction().begin();
            con.getEntityManager().remove(get(estudiante));
            con.getEntityManager().getTransaction().commit();
            rows = 1;
        } catch (Exception e) {
            e.printStackTrace(System.out);
            con.getEntityManager().getTransaction().rollback();
        }
        return rows;
    }
}
