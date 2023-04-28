package com.jhonatanacalon.models.idao;

import java.util.List;
import com.jhonatanacalon.models.domain.Estudiante;

/**
 *
 * @author Jhonatan Jose Acalon Ajanel
 * @date 30-08-2022
 * @time 08:55:00 AM
 * @code IN5BM
 */
public interface IEstudianteDAO {

    // Listar todos los registros
    public List<Estudiante> getAll();

    // Insertar un registro
    public int add(Estudiante estudiante);

    // Actualizar un registro
    public int update(Estudiante estudiante);

    // Eliminar un registro
    public int delete(Estudiante estudiante);
}
