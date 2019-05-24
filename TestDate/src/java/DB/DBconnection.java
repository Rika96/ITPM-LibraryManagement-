package DB;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Sandeepa Fernando
 */
public class DBconnection {
        private String url="jdbc:mysql://localhost:3306/libmange";
        private String uName="root";
        private String pw="";
        static Connection con=null;

public  DBconnection(){}
public boolean isConnected() throws ClassNotFoundException, SQLException
{
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection(url,uName,pw);

    if(con!=null)
        return true;
    else
        return false;
}
public static Connection getCon(){
    
    return con;
    }    
}
