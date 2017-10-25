package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import model.Usuario;
import util.DbUtil;

public class UserDao {

	private Connection connection;

	public UserDao() {
		connection = DbUtil.getConnection();
	}

	public Usuario validar(Usuario usuario) {
	    try {
	 	PreparedStatement preparedStatement = null;
                String consulta = "SELECT * FROM USUARIO WHERE USUARIO=? AND PASS=?";
                preparedStatement = connection.prepareStatement(consulta);
                preparedStatement.setString(1, usuario.getLogin());
                preparedStatement.setString(2, usuario.getPass());
                ResultSet rs = preparedStatement.executeQuery();
                if(rs.next()){
                   
                   int id = rs.getInt("id");
                   String login= rs.getString("usuario");
                   String pass = rs.getString("pass");
                   Usuario sesion = new Usuario();
                   sesion.setLogin(login);
                   sesion.setPass(pass);
                   sesion.setId(id);
                   return sesion;
                }else{
                  //Luego realizaremos otro tipo de retorno  
                  return null;
                }

		} catch (SQLException e) {
			e.printStackTrace();
		}
            
            return null;
	}
	
	
}
