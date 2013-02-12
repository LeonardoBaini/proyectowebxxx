package Abm;

import Base.metodosSql;

public class AdministradorABM {
	public AdministradorABM(){
		
	}
	
	public int darDeAlta(Persistente objeto,String base,String tabla) {
		metodosSql metodos=new metodosSql();
		
		
		return metodos.insertarObjetoAlaBase(objeto, base, tabla);
		
	}
	public int darDeBaja(Persistente objeto,String base,String tabla){
		metodosSql metodos=new metodosSql();
		
		return metodos.borrarObjetoDeLaBase(objeto, base, tabla);
		
		
	}
	
	public int InHabilitar(Persistente objeto,String base,String tabla){
		metodosSql metodos=new metodosSql();
		
		return metodos.inHabilitarObjetoDeLaBase(objeto, base, tabla);
		
		
	}
	
	
	public int modificar(Persistente objeto,String base,String tabla){
		metodosSql metodos=new metodosSql();
		return metodos.modificarObjetoDeLaBase(objeto, base, tabla);
		
	}
	/**
	 * Actualiza las dependencias de las subtareas con respecto a las tareas modificadas
	 * @param vieja (Tarea)
	 * @param nueva (Tarea)
	 * @return Devuelve 1 si se ejecut� correctamente sino -1.
	 */
	
	public int reasignarSubtareas(Tarea vieja,Tarea nueva){
		metodosSql metodos=new metodosSql();
		int idViejo=vieja.getIdTarea();
		int idNuevo=nueva.getIdTarea();
		return metodos.insertarOmodif("UPDATE `proyectoweb`.`subtarea` SET `TareaPadre`="+idNuevo+" WHERE `TareaPadre`='"+idViejo+"';");
	}
	
	
}
