package model;

import model.Elevador;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class AcessoDB {
    private Connection con;
    
    public AcessoDB(){
        con = DBConexao.getConnection();
    }
    
    public int inserirElevador(Elevador elevador){
        int status = 0;
        
        try {
            PreparedStatement ps = con.prepareStatement(
                "insert into elevador (descricao, quant_andares, capacidade, andar_atual, fabricante, pessoas) values(?,?,?,?,?, ?)"
            );
            ps.setString(1, elevador.getDescricao());
            ps.setInt(2, elevador.getTotalAndares());
            ps.setInt(3, elevador.getCapacidade());
            ps.setInt(4, elevador.getAndarAtual());
            ps.setString(5, elevador.getFabricante());
            ps.setInt(6, elevador.getPessoas());
            status = ps.executeUpdate();
            
        } catch (Exception e) {
            System.out.println(e);
        }
        
        return status;
    }
    
    public int atualizaElevador(Elevador elevador){
        int status = 0;
        
        try {
            PreparedStatement ps = con.prepareStatement(
                "update elevador set descricao=?, quant_andares=?, capacidade=?, andar_atual=?, fabricante=?, pessoas=? where id=?"
            );
            ps.setString(1, elevador.getDescricao());
            ps.setInt(2, elevador.getTotalAndares());
            ps.setInt(3, elevador.getCapacidade());
            ps.setInt(4, elevador.getAndarAtual());
            ps.setString(5, elevador.getFabricante());
            ps.setInt(6, elevador.getPessoas());
            ps.setInt(7, elevador.getId());
            
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        
        return status;
    }
    
    public int deletaElevador(Elevador elevador){
        int status = 0;
        
        try {
            PreparedStatement ps = con.prepareStatement(
                "delete from elevador where id=?"
            );
            
            ps.setInt(1, elevador.getId());
            
            status = ps.executeUpdate();
        } catch(Exception e) {
            System.out.println(e);
        }
        
        return status;
    }
    
    public ArrayList<Elevador> obterDados(){
        ArrayList<Elevador> lista = new ArrayList<>();
        
        try {
            PreparedStatement ps = con.prepareStatement(
                "select * from elevador order by id"
            );
            
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                Elevador elevador = new Elevador();
                elevador.setId(rs.getInt("id"));
                elevador.setDescricao(rs.getString("descricao"));
                elevador.setTotalAndares(rs.getInt("quant_andares"));
                elevador.setCapacidade(rs.getInt("capacidade"));
                elevador.setAndarAtual(rs.getInt("andar_atual"));
                elevador.setFabricante(rs.getString("fabricante"));
                elevador.setPessoas(rs.getInt("pessoas"));
                
                lista.add(elevador);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        
        return lista;
    }
    
    public Elevador obterElevadorId(String Sid) {
        int id = Integer.parseInt(Sid);
        Elevador elevador = null;
        try {
            PreparedStatement ps = con.prepareStatement("select * from elevador where id=?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                elevador = new Elevador();
                elevador.setId(Integer.parseInt(rs.getString("id")));
                elevador.setDescricao(rs.getString("descricao"));
                elevador.setTotalAndares(Integer.parseInt(rs.getString("quant_andares")));
                elevador.setCapacidade(Integer.parseInt(rs.getString("capacidade")));
                elevador.setAndarAtual(Integer.parseInt(rs.getString("andar_atual")));
                elevador.setFabricante(rs.getString("fabricante"));
                elevador.setPessoas(Integer.parseInt(rs.getString("pessoas")));
         }
        } catch (Exception e) {
            System.out.println(e);
        }
        
        return elevador;
    }
    
    public int atualizaAndar(Elevador elevador){
        int status = 0;
        
        try {
            PreparedStatement ps = con.prepareStatement(
                "update elevador set andar_atual=? where id=?"
            );
            //ps.setString(4, elevador.getAndarAtual());
            //ps.setInt(2, elevador.getTotalAndares());
            //ps.setInt(3, elevador.getCapacidade());
            ps.setInt(1, elevador.getAndarAtual());
            //ps.setString(5, elevador.getFabricante());
            ps.setInt(2, elevador.getId());
            
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        
        return status;
    }
}