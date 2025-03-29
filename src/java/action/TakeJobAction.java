/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package action;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Obscurion One
 */
@WebServlet("/takeJobAction")
public class TakeJobAction extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String detail[] = new String[1];
        detail[0]       = req.getParameter("task-id");
        System.out.println("Task-id >>"+detail[0]);        
        resp.setContentType("text/plain"); //For the AJAX function to read
        
        String currentUser = "Session User";
        String sql1= "UPDATE table_name SET work-status = '1' WHERE id=?;";
        String sql2= "INSERT INTO task_sheet (task_pickup_id,present_status,taken_by) VALUES (?,0,)";
//        super.doPost(req, resp); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }
    
}
