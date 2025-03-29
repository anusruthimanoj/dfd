/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package action;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import db.DBConnectionPrepared;
import java.io.IOException;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import util.JsonResponse;

/**
 *
 * @author Obscurion One
 */
@WebServlet("/regAction")
public class regAction extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String detail = req.getParameter("formData");        
        resp.setContentType("text/plain"); //For the AJAX function to read
        
        System.out.println(detail);
        JsonElement root = JsonParser.parseString(detail);
        JsonArray  jsonArray = root.getAsJsonArray();
        String tempVal      ="";    //Collecting value node from serialised form
        String tempName     ="";    //Collecting name node from serialised form
        String args[]       = new String[4];   
        
        for(int i=0;i<jsonArray.size(); i++){   
            JsonObject jsonObject = jsonArray.get(i).getAsJsonObject();
            tempName    = jsonObject.get("name").toString();
            tempVal     = jsonObject.get("value").toString();
            tempVal     = tempVal.substring(1, tempVal.length()-1);
            
            switch(tempName.substring(1, tempName.length()-1)){
                case "username"     : args[0]   =tempVal;    break;
                case "email"        : args[1]   =tempVal;    break; 
                case "pswd"         : args[2]   =tempVal;    break; 
                case "userrole"     : args[3]   =tempVal;    break; 
                
                default             : System.out.println("");
            }
        }
        
        String sql="INSERT INTO greenhorizon_latest.credentials (username,email,userpass,userrole,active_status) VALUES (?,?,?,?,1);";
        
        JsonResponse jr = new JsonResponse();        
        try{            
            DBConnectionPrepared dbcp = new DBConnectionPrepared();   
            int status = dbcp.putData(sql, args);
            if(status==1){
                jr.setStatus("success");
                jr.setMessage("Succefully registered");                
            }else{
                jr.setStatus("failed");
                jr.setMessage("Registratin failed"); 
            }
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    
}
