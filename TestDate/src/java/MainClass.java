
import java.sql.SQLException;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author sandeepa
 */
public class MainClass {

    public static void main(String args[]) throws ClassNotFoundException, SQLException {
        GetData_inDB get = new GetData_inDB();
        get.getDate();
        
    }

}
