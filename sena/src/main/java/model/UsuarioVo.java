package model;

public class UsuarioVo {
    private int idUs;
    private String nombre; 
	private String correo;
	private String contraseña;
    private String fecharegistro;
    
  
    public UsuarioVo() {
    }
    public UsuarioVo(int idUs, String nombre, String correo, String contraseña, String fecharegistro) {
        this.idUs = idUs;
        this.nombre = nombre;
        this.correo = correo;
        this.contraseña = contraseña;
        this.fecharegistro = fecharegistro;
    }
    public UsuarioVo(String nombre, String correo, String contraseña, String fecharegistro) {
        this.nombre = nombre;
        this.correo = correo;
        this.contraseña = contraseña;
        this.fecharegistro = fecharegistro;
    }
    public UsuarioVo(int idUpd1, String nombreUpd, String correoUpd, String contraseñaUpd) {
    }
    public int getIdUs() {
        return idUs;
    }
    public void setIdUs(int idUs) {
        this.idUs = idUs;
    }
    public String getNombre() {
        return nombre;
    }
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public String getCorreo() {
        return correo;
    }
    public void setCorreo(String correo) {
        this.correo = correo;
    }
    public String getContraseña() {
        return contraseña;
    }
    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }
    public String getFecharegistro() {
        return fecharegistro;
    }
    public void setFecharegistro(String fecharegistro) {
        this.fecharegistro = fecharegistro;
    }
    

    


}


    
     
   
    