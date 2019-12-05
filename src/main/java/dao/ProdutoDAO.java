/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import model.Produto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;
/**
 *
 * @author douglas
 */
public class ProdutoDAO {
    
    private Connection conn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Produto> lista = new ArrayList<>();
    
    public ProdutoDAO(){
        conn = new ConnectionFactory().getConexao();
        
    }
    
    public void inserir(Produto produto){
        String sql = "INSERT INTO produto (nome,preco,quantidade) VALUES(?,?,?)";
        
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, produto.getNome());
            stmt.setDouble(2, produto.getPreco());
            stmt.setInt(3, produto.getQuantidade());      
            stmt.execute();
            stmt.close();
        }catch(Exception erro){
            throw new RuntimeException("Erro 2: "+ erro);
        }
    }
    
    public void alterar(Produto produto){
        String sql = "UPDATE produto SET nome = ?, preco = ?, quantidade = ? WHERE id = ?";
        
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, produto.getNome());
            stmt.setDouble(2, produto.getPreco());
            stmt.setInt(3, produto.getQuantidade());
            stmt.setInt(4, produto.getId());      
            stmt.execute();
            stmt.close();
        }catch(Exception erro){
            throw new RuntimeException("Erro 3: "+ erro);
        }
    }
    public void excluir(int valor){
        String sql = "DELETE FROM produto WHERE id = "+valor;
        
        try{
            st = conn.createStatement();
            st.execute(sql);
            st.close();
        }catch(Exception erro){
            throw new RuntimeException("Erro 4: "+ erro);
        }
    }
    
    public ArrayList<Produto> listarTodos(){
        String sql = "SELECT * FROM produto";
                
        try{
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while(rs.next()){
                Produto produto = new Produto();
                produto.setId(rs.getInt("id"));
                produto.setNome(rs.getString("nome"));
                produto.setPreco(rs.getDouble("preco"));
                produto.setQuantidade(rs.getInt("quantidade"));
                
                lista.add(produto);
            }
        }catch(Exception erro){
            throw new RuntimeException("Erro 5: "+ erro);
        }
        return lista;
    }
    
    public ArrayList<Produto> listarTodosDescricao(String valor){
        String sql = "SELECT * FROM produto WHERE nome LIKE '%"+valor+"%'";
                
        try{
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while(rs.next()){
                Produto produto = new Produto();
                produto.setId(rs.getInt("id"));
                produto.setNome(rs.getString("nome"));
                produto.setPreco(rs.getDouble("preco"));
                produto.setQuantidade(rs.getInt("quantidade"));
                
                lista.add(produto);
            }
        }catch(Exception erro){
            throw new RuntimeException("Erro 6: "+ erro);
        }
        return lista;
    }
}
