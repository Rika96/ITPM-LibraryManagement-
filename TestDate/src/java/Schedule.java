
import java.sql.SQLException;
import java.util.Timer;
import java.util.TimerTask;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Sandeepa Fernando
 */
public class Schedule {

    public static void main(String args[]) {
        Timer timer = new Timer();
        TimerTask t = new TimerTask() {
            @Override
            public void run() {
                // some code
                GetData_inDB get = new GetData_inDB();
                try {
                    get.getDate();
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(Schedule.class.getName()).log(Level.SEVERE, null, ex);
                } catch (SQLException ex) {
                    Logger.getLogger(Schedule.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        };

        timer.schedule(t, 0l, 10 * 60 * 60 * 1);
        //timer.schedule (t, 0l, 1000*60*60*24);
        
        

//        Timer timer = new Timer();
//        TimerTask t = new TimerTask() {
//            @Override
//            public void run() {
//                // some code
//            }
//        };
//
//        timer.schedule(t, 0l, 1000 * 60 * 60 * 24);
    }

}
