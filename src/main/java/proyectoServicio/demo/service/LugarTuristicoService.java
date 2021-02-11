package proyectoServicio.demo.service;

import java.util.List;

import proyectoServicio.demo.jpa.entity.LugarTuristicoJPA;

public interface LugarTuristicoService {
	
	public LugarTuristicoJPA getLugarTuristicoById (int id);
	
	public LugarTuristicoJPA getLugarTuristicoByNombre (String nombre);
	
	public List<LugarTuristicoJPA> listarLugaresTuristicos ();
	
	public LugarTuristicoJPA obtenerLugaresTuristicosByid (int idLugarTuristico);
	
	public int insertarLugarTuristico (LugarTuristicoJPA lugarTuristico);

}
