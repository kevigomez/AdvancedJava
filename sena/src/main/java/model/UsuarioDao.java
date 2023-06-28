package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UsuarioDao {
    Connection con; //objeto de conexión
    PreparedStatement ps; //preparar sentencias
    ResultSet rs; // almacenar consutas
    String sql=null;
    int r;
public UsuarioDao(Connection con2) {
      con = con2;
    }
public void RegistrarUs(UsuarioVo nombre) throws SQLException{
    String sql="INSERT INTO Usuario (nombre, correo_electronico, contrasena, fecha_registro) VALUES(?, ?, ?, ?)";
    try{
        con=Conexion.conectar();
        ps=con.prepareStatement(sql);
        ps.setString(1, nombre.getNombre());
        ps.setString(2, nombre.getCorreo());
        ps.setString(3, nombre.getContraseña());
        ps.setString(4, nombre.getFecharegistro());
        ps.executeUpdate(); 
        con.close();
    }
    catch(Exception e){
            System.out.println("Error en el regisro "+e.getMessage().toString());
        }
        finally{
            con.close();//cerrando conexión
        }


}

public List<UsuarioVo> consultarUs() throws SQLException {
    List<UsuarioVo> usuarioCon = new ArrayList<>();
    String sql = "SELECT * FROM Usuario";
    try {
        con = Conexion.conectar();
        ps = con.prepareStatement(sql);
        rs = ps.executeQuery();

        while (rs.next()) {
             UsuarioVo r=new UsuarioVo();
            r.setIdUs(rs.getInt("id"));
            r.setNombre(rs.getString("Nombre"));
            r.setCorreo(rs.getString("Correo_electronico"));
            r.setContraseña(rs.getString("contrasena"));
            r.setFecharegistro(rs.getString("Fecha_registro"));
            usuarioCon.add(r);
        }
    } catch (Exception e) {
        System.out.println("La consulta no pudo ser ejecutada " + e.getMessage());
    } finally {
        con.close();
    }

    return usuarioCon;
}
public UsuarioVo accesoUserId(String userId) throws SQLException {
    UsuarioVo usuario = null;
    String sql = "SELECT * FROM usuario WHERE id = ?";
    try {
        con = Conexion.conectar();
        ps = con.prepareStatement(sql);
        ps.setString(1, userId); // Asignar el ID del usuario al parámetro
        rs = ps.executeQuery();

        if (rs.next()) {
            usuario = new UsuarioVo();
            usuario.setIdUs(rs.getInt("id"));
            usuario.setNombre(rs.getString("Nombre"));
            usuario.setCorreo(rs.getString("Correo_electronico"));
            usuario.setContraseña(rs.getString("contrasena"));
            usuario.setFecharegistro(rs.getString("Fecha_registro"));
            // Realizar las operaciones necesarias con el usuario obtenido
        }
    } catch (Exception e) {
        System.out.println("No se encontró el usuario con ese ID");
    } finally {
        con.close();
    }
    return usuario;
}



    public void Actualizar(UsuarioVo usuarioUpd) throws SQLException {
    String sql = "UPDATE usuario SET nombre = ?, correo_electronico = ?, contrasena = ? WHERE id = ?";
    try {
        con = Conexion.conectar();
        ps = con.prepareStatement(sql);
        ps.setString(1, usuarioUpd.getNombre());
        ps.setString(2, usuarioUpd.getCorreo());
        ps.setString(3, usuarioUpd.getContraseña());
        ps.setInt(4, usuarioUpd.getIdUs()); // Asignar el ID del usuario al parámetro
        ps.executeUpdate();
    } finally {
        con.close();
    }
}
    public void eliminarUs(UsuarioVo idUs) throws SQLException{
        String sql="DELETE from usuario where id=?";
        try{
            con = Conexion.conectar();
        ps = con.prepareStatement(sql);
        ps.setInt(1, idUs.getIdUs());
        ps.executeUpdate();
        } finally{
            con.close();
        }
    }

}
