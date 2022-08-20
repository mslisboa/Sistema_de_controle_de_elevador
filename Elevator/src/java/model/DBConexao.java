package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConexao {
    public static Connection getConnection(){
        Connection con = null;
        try{
            Class.forName("org.sqlite.JDBC");
            String str = "jdbc:sqlite:/home/lisboa/Documentos/UESC/Semestre_3/LPIII/Projetos_JAVA/Projeto_Elevador/Databases/db_elevador";
            con = DriverManager.getConnection(str);
            
        } catch (Exception e) {
            System.out.println(e);
        }
        
        return con;
    }
}