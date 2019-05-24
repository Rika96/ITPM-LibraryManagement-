/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Sandeepa Fernando
 */
import DB.DBconnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

public class GetData_inDB {

    private DBconnection db = new DBconnection();
    private Connection newCon = null;
    List<String> nameArry = new ArrayList<String>();
    List<String> dateArry = new ArrayList<String>();
    List<String> emailArry = new ArrayList<String>();

    public String getDate() throws ClassNotFoundException, SQLException {
        ResultSet result = null;

        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDateTime now = LocalDateTime.now();
        //dtf.format(now)
        
        String current_date = "\""+dtf.format(now)+"\"";

        System.out.println(current_date);

        if (db.isConnected()) {
            newCon = DBconnection.getCon();
            Statement stmt = newCon.createStatement();
            String query = "SELECT * FROM Emain_table WHERE date = "+current_date+"";
            result = stmt.executeQuery(query);

            while (result.next()) {
                String name = result.getString("name");
                String date = result.getString("date");
                String email = result.getString("email");

                nameArry.add(name);
                dateArry.add(date);
                emailArry.add(email);

            }

            if (nameArry != null) {
                for (int i = 0; i < nameArry.size(); i++) {
                    String to = emailArry.get(i);
                    String subject = "About Returning the Book";
                    String message = "Hello " +nameArry.get(i)+ " You need to return the book before tommrow 03.00 p.m" +"\n\n\n"
                            + "This is a auto genarated Email, Do not Reply";
                    SendMail.send(to, subject, message);
                }
            }

            System.out.println("Name array" + nameArry.toString());

        }

        return null;
    }

}
