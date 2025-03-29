<%-- 
    Document   : CustomerHome
    Created on : 25 Mar 2025, 11:07:15?pm
    Author     : Obscurion One
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="db.DBConnectionPrepared"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel | GREEN HORIZON</title>
    <!-- Link to CSS -->
    <link rel="stylesheet" href="../assets/admin/admin.css">
    <!-- Font Awesome Icons -->
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
  <script src="../resources/posts.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  </head>
<body>
    <!-- Admin Sidebar -->
    <aside class="admin-sidebar">
        <div class="admin-logo">GREEN HORIZON</div>
        <ul class="admin-nav">
            <li><a href="#dashboard"><i class="fas fa-tachometer-alt"></i> Dashboard</a></li>
            <li><a href="#users"><i class="fas fa-users"></i> New Tasks</a></li>
            <li><a href="#pickups"><i class="fas fa-truck"></i>Pending with me</a></li>
            <li><a href="#reports"><i class="fas fa-flag"></i> Completed</a></li>
            <li><a href="#"><i class="btn btn-delete fas fa-flag"></i> Logout</a></li>
            
        </ul>
    </aside>

    <!-- Admin Main Content -->
    <main class="admin-content">
        <!-- Dashboard Section -->
        <section id="dashboard" class="admin-section">
            <h2>Dashboard</h2>
            <div class="admin-stats">
                <div class="stat-card">
                    <h3>10,000+</h3>
                    <p>All tasks</p>
                </div>
                <div class="stat-card">
                    <h3>2M+</h3>
                    <p>My Tasks</p>
                </div>
                <div class="stat-card">
                    <h3>500K+</h3>
                    <p>Completed</p>
                </div>
            </div>
        </section>

        <!-- New Tasks -->
        <section id="users" class="admin-section">
            <h2>New Tasks</h2>
            <table class="user-table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Location</th>
                        <th>Phone</th>
                        <th>Description</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                    try {
                        System.out.println("hahahahahahahahhah");                      
                        DBConnectionPrepared dbcp = new DBConnectionPrepared();
                        ResultSet rs;
                        String args[] = new String[1];
                        args[0] ="0";
                        String sql = "SELECT id,name,location,phone,descript FROM greenhorizon_latest.tasks_pickup WHERE work_status =?";
                        rs = dbcp.getData(sql, args);
                        int i=0;
                        while(rs.next()){
                    %>
                    <tr>
                        <td><% out.println(rs.getString("id")); %></td>
                        <td><% out.println(rs.getString("name")); %></td>
                        <td><% out.println(rs.getString("location")); %></td>
                        <td><% out.println(rs.getString("phone")); %></td>
                        <td><% out.println(rs.getString("descript")); %></td>
                        <td>
                            <button 
                                class="edit-btn takeJobBtn" 
                                id="take_job_btn_"<% out.print(i);%>
                                data-task-id="<% out.println(rs.getString("id")); %>"
                                >
                                Take Job
                            </button>
                        </td>
                    </tr> 
                    <%
                        i++;
                        }                   
                        
                    } catch (Exception e) {
                    
                        }
                    %>
                                       
                </tbody>
            </table>
        </section>

        <!-- Waste Pickups Section -->
        <section id="pickups" class="admin-section">
            <h2>Pending with me</h2>
            <table class="pickup-table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>User</th>
                        <th>Address</th>
                        <th>Status</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>Michael Johnson</td>
                        <td>321 Birch Street, Unit 302,
                            Lakeside, FL 33401, CALTAX</td>
                        <td>Pending</td>
                        <td>
                            <button class="approve-btn">Approve</button>
                            <button class="reject-btn">Reject</button>
                        </td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Jane Smith</td>
                        <td>456 Green Lane, Eco Town</td>
                        <td>Approved</td>
                        <td>-</td>
                    </tr>
                </tbody>
            </table>
        </section>

        <!-- Waste Reports Section -->
        <section id="reports" class="admin-section">
            <h2>Completed tasks</h2>
            <table class="report-table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Location</th>
                        <th>Description</th>
                        <th>Severity</th>
                        <th>Photo</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>Green Park</td>
                        <td>Illegal dumping of plastic waste</td>
                        <td>High</td>
                        <td><img src="waste-photo.jpg" alt="Waste Photo" class="report-photo"></td>
                    </tr>
                </tbody>
            </table>
        </section>

<!--         Analytics Section 
        <section id="analytics" class="admin-section">
            <h2>Analytics</h2>
            <canvas id="wasteChart"></canvas>
        </section>-->
    </main>

    <!-- Link to JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="../assets/admin/admin.js"></script>
    <script>
    $(document).ready(function(){
            $(".takeJobBtn").on("click", function(event){
                 var userId = $(this).data("task-id");
                 takeJobAction(userId);
            });
        });
    </script>
</body>
</html>