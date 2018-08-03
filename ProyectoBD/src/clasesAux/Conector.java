/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clasesAux;

import java.sql.*;
import javax.swing.JOptionPane;

/**
 *
 * @author elvis
 */
public class Conector {

    public static final String URL = "jdbc:mysql://localhost:3306/Colegio";
    public static final String USER = "root";
    public static final String PWD = "";

    public static Connection getConector() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
             conn=DriverManager.getConnection(URL,USER,PWD);
        } catch (Exception e) {
            System.err.println(e);
        }
        return conn;
    }
}
