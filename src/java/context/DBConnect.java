/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package context;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;


/**
 *
 * @author Son
 */
public class DBConnect {

   private static Connection con;

    public static Connection getConnection() {

        try {

            if (con == null) {

                //driver class load
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                //create a connection..
                String url = "jdbc:sqlserver://localhost:1433; databaseName=Lab4; user = sa; password = 123456";
                con = DriverManager.getConnection(url);

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return con;
    }


}

