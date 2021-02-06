package proyectoServicio.demo.dao;

import java.util.List;

import proyectoServicio.demo.jpa.entity.LugarTuristicoJPA;

public interface LugarTuristicoDAO {
	
	public LugarTuristicoJPA getLugarTuristicoById (int id);
	
	public LugarTuristicoJPA getLugarTuristicoByNombre (String nombre);
	
	public List<LugarTuristicoJPA> listarLugaresTuristicos ();
	
	public LugarTuristicoJPA obtenerLugaresTuristicosByid (int idLugarTuristico);

}