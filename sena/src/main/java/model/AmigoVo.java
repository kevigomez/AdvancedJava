package model;

public class AmigoVo {

	private int amigoid; 
	private String nombre; 
	private String estado;
	public AmigoVo(){
		
	}
	public AmigoVo(int amigoid, String nombre, String estado) {
		this.amigoid = amigoid;
		this.nombre = nombre;
		this.estado = estado;
	}
	public int getAmigoid() {
		return amigoid;
	}
	public void setAmigoid(int amigoid) {
		this.amigoid = amigoid;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
    	
}