package model;

import org.apache.derby.iapi.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.SQLException;
import com.mysql.cj.protocol.Resultset;

public class AmigoDao {
    private Connection con; 
    PreparedStatement ps;
    Resultset rs; 
    String sql=null;
    int r;
    
    public int registro(AmigoVo Amigo) throws SQLException {
    sql="INSERT INTO Amigo(nombre,estado) values(?,?)";
    try{
        con=Conexion.conectar();
        
        

    }catch(Exception e){

    }
    finally{

    }

    
    return r;
    }
}
