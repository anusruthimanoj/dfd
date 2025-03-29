/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function loginAction(formData,mode){
    console.log("Entered the loginAction JS function" +JSON.stringify(formData));
    $.ajax({
        type: 'POST',
        url: "./loginAction",
        data: {
            formData: JSON.stringify(formData) //Stringify performed on the formData for sharing 
        },
        success : function(data){
            
            if(data.toString().includes("success")){
                console.log("SUCCESS:: LoginAction was success"+JSON.parse(data).status);
                window.location.href = JSON.parse(data).url;
            }else{
                console.log("SUCCESS:: LoginAction not performed");
                window.location.href = JSON.parse(data).url;
            }
        },
        error: function(xhr, status, error) {
        // Log the detailed error
        console.error("AJAX request failed!");
        console.error("Status: " + status);
        console.error("Error: " + error);
        console.error("Response Text: " + xhr.responseText);
    }
    });
}


function regAction(formData,mode){
    console.log("Entered the loginAction JS function" +JSON.stringify(formData));
    $.ajax({
        type: 'POST',
        url: "./regAction",
        data: {
            formData: JSON.stringify(formData) //Stringify performed on the formData for sharing 
        },
        success : function(data){
            
            if(data.toString().includes("success")){
                console.log(JSON.parse(data).status);
                showResponse(JSON.parse(data).status);
//                window.location.href = JSON.parse(data).url;
            }else{
                console.log(JSON.parse(data).status);
                showResponse(JSON.parse(data).status);
//                window.location.href = JSON.parse(data).url;
            }
        },
        error: function(xhr, status, error) {
        // Log the detailed error
        console.error("AJAX request failed!");
        console.error("Status: " + status);
        console.error("Error: " + error);
        console.error("Response Text: " + xhr.responseText);
    }
    });
}


function pickupJobSaveAction(formData,mode){
    console.log("Entered the pickupJobSaveAction JS function" +JSON.stringify(formData));
     $.ajax({
        type: 'POST',
        url: "../pickupJobSaveAction",
        data: {
            formData: JSON.stringify(formData) //Stringify performed on the formData for sharing 
        },
        success : function(data){
            
            if(data.toString().includes("success")){
                console.log(JSON.parse(data).status);
                showResponse(JSON.parse(data).status);
//                window.location.href = JSON.parse(data).url;
            }else{
                console.log(JSON.parse(data).status);
                showResponse(JSON.parse(data).status);
//                window.location.href = JSON.parse(data).url;
            }
        },
        error: function(xhr, status, error) {
        // Log the detailed error
        console.error("AJAX request failed!");
        console.error("Status: " + status);
        console.error("Error: " + error);
        console.error("Response Text: " + xhr.responseText);
    }
    });
}

function takeJobAction(taskId){
    console.log("Task ID <<"+taskId);
}


function showResponse(message){
    alert(message);
}