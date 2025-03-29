/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package action;

import com.google.gson.Gson;
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
import javax.servlet.http.HttpSession;
import util.JsonResponse;

/**
 *
 * @author Obscurion One
 */
@WebServlet("/loginAction")
public class LoginAction extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String detail = req.getParameter("formData");
        
        resp.setContentType("text/plain"); //For the AJAX function to read

//        System.out.println("Servlet invoked succesfully !");    
//        System.out.println("Data obtained - "+detail); //For checking if the data is correct
        
        JsonElement root = JsonParser.parseString(detail);
        JsonArray  jsonArray = root.getAsJsonArray();
        String tempVal      ="";    //Collecting value node from serialised form
        String tempName     ="";    //Collecting name node from serialised form
        String args[]       = new String[2];       
        //copying data
        for(int i=0;i<jsonArray.size(); i++){   
            JsonObject jsonObject = jsonArray.get(i).getAsJsonObject();
            tempName    = jsonObject.get("name").toString();
            tempVal     = jsonObject.get("value").toString();
            tempVal     = tempVal.substring(1, tempVal.length()-1);
            
            switch(tempName.substring(1, tempName.length()-1)){
                case "username"     : args[0]   =tempVal;    break;
                case "userpass"     : args[1]   =tempVal;    break;                           
                default             : System.out.println("DEFAULT--"+tempName);
            }
        }
   //        building the query

        String sql = "SELECT * FROM greenhorizon_latest.credentials WHERE username= ? AND userpass= ?;";
        
//        System.out.println("Values are:- \nUsername:-"+args[0]+"\nPass:-"+args[1]);
/*
        TEMPLATE
        JsonResponse jr = new JsonResponse();        
        try{            
            DBConnectionPrepared dbcp = new DBConnectionPrepared();   
            ResultSet rs = dbcp.getData(sql, args);
            if(rs.next()){
            }
        }catch(Exception e){
            e.printStackTrace();
        }


*/
        JsonResponse jr = new JsonResponse();        
        try{            
            DBConnectionPrepared dbcp = new DBConnectionPrepared();   
            ResultSet rs = dbcp.getData(sql, args);
            if(rs.next()){
//                System.out.println("ResultSet returned Data");
                if(rs.getString("active_status").toString().equals("0")){   //0 Means account is not activated
//                    System.out.println("Account of "+rs.getString("username")+" is locked");
                    jr.setStatus("locked");
                    jr.setUrl("Blocked Page");
                    jr.setMessage("Authenticated succefully, Account locked");
                }else{  //Account is active
                    
                    if(rs.getString("userrole").toString().equals("admin")){
    //                        USER IS ADMIN
                        jr.setStatus("success");
                        jr.setUrl("AdminHomePage");
                        jr.setMessage("Authenticated succefully");
                    }else if(rs.getString("userrole").toString().equals("agency")){
    //                        USER IS AGENCY
                            jr.setStatus("success");
                            jr.setUrl("./agency/agencyHome.jsp");
                            jr.setMessage("Authenticated succefully");
                    }else if(rs.getString("userrole").toString().equals("customer")){
    //                        USER IS CUSTOMER
                            jr.setStatus("success");
                            jr.setUrl("./customer/customerHome.jsp");
                            jr.setMessage("Authenticated succefully");
                    }else if(rs.getString("userrole").toString().equals("worker")){
    //                        USER IS CUSTOMER
                            jr.setStatus("success");
                            jr.setUrl("WorkerHomePage");
                            jr.setMessage("Authenticated succefully");                
                    }else{
    //                        USER IS UNDEFINED
                            jr.setStatus("success");
                            jr.setUrl("Undefined User type");
                            jr.setMessage("?");     
                    }
//                
                }
            }else{
//                  NO RESULT
                    jr.setStatus("incorrect");
                    jr.setUrl("Incorrect Page");
                    jr.setMessage("Incorret credentials");
            }
            }catch(Exception e){
//            System.out.println("Exception caught");
            e.printStackTrace();            
            jr.setStatus("exception");
            jr.setUrl("Exception Page");
            jr.setMessage("Exception occured"+e);
        }
        System.out.println(jr.getMessage());
        Gson gson = new Gson();
        resp.getWriter().write(gson.toJson(jr));
//        super.doPost(req, resp); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }
    
}
