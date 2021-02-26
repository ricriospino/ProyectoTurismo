package proyectoServicio.demo.service.impl;

import java.util.List;
import java.util.Map;

import proyectoServicio.demo.dao.ServicioDAO;
import proyectoServicio.demo.dao.impl.ServicioDAOImpl;
import proyectoServicio.demo.jpa.entity.ServicioJPA;
import proyectoServicio.demo.service.ServicioService;

public class ServicioServiceImpl implements ServicioService {

	private ServicioDAO servicioDAO;
	
	public ServicioServiceImpl() {
		
		servicioDAO = new ServicioDAOImpl();
	}
	@Override
	public ServicioJPA getServicioById(int id) {
		
		return servicioDAO.getServicioById(id);
	}
	@Override
	public ServicioJPA getServicioByTipoServicio(String tipoServicio) {
		
		return servicioDAO.getServicioByTipoServicio(tipoServicio);
	}
	@Override
	public List<ServicioJPA> listarServiciosTour(int idTour) {
		
		return servicioDAO.listarServiciosTour(idTour);
	}
	
	@Override
	public int eliminarServicios(int idTour) {
		
		return  servicioDAO.eliminarServicios(idTour);
	}
	@Override
	public List<Map<String, Object>> listarServicios() {
		
		return  servicioDAO.listarServicios();
	}

}
