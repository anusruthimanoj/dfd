/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 *
 */
public class DBConnectionPrepared {
    Connection  con=null;
    Statement   st=null;
    ResultSet   rs=null;
    public DBConnectionPrepared(){        
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con= DriverManager.getConnection("jdbc:mysql://localhost/greenhorizon_latest","root","rootpass");
            
        }
        catch(Exception e){
            e.printStackTrace();
            System.out.println("Failed to get DB Connection");
//            JOptionPane.showMessageDialog(null, "Failed to get Connection");
        }
    }
    public int putData(String sql,String args[]){
        int status=0;
        try {
            PreparedStatement stmt=con.prepareStatement(sql);
            for(int i=0;i<args.length;i++){
                stmt.setString(i+1, args[i]);
            }            
            status= stmt.executeUpdate();             
        } catch (Exception e) {
            e.printStackTrace();
        } 
        return status;
    }
    public int putBatchData(String sql,String args[][]) throws SQLException{
        int status[];
        try {
            con.setAutoCommit(false);
            PreparedStatement stmt=con.prepareStatement(sql);
            for(int i=0;i<args.length;i++){
                for(int j=0;j<args[i].length;j++){
                    stmt.setString(j+1, args[i][j]);
                    System.out.println("--ARRAY:"+args[i][j]);
                }            
                stmt.addBatch();
                stmt.executeBatch();
                stmt.clearParameters();
            }
            status= stmt.executeBatch();
            con.commit();
        } catch (Exception e) {
            e.printStackTrace();
            con.rollback();
            con.setAutoCommit(true);
            return 0;
        }
        con.setAutoCommit(true);
        return 1;
    }
    public ResultSet getData(String sql,String args[]){
        ResultSet rs=null;
        try {
            PreparedStatement stmt=con.prepareStatement(sql);
            if(args!=null)
                for(int i=0;i<args.length;i++){
                    stmt.setString(i+1, args[i]);
                }            
            rs=stmt.executeQuery();             
        } catch (Exception e) {
            e.printStackTrace();
        } 
        return rs;
    }
    public void DBClose(){
        try{
            con.close();
        } 
        catch (Exception e){
            e.printStackTrace();
        }
    }
    public static void main(String[] args) {
        
    }
}
