<%@ page import="com.pojo.Emp" %>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
</head>
<body>

    <h1>View Data</h1>
   <a href="index.html">
    <p>Add more users</p>
</a>
    
    <% 
        List<Emp> empList = (List<Emp>) request.getAttribute("empList");
        if (empList != null && !empList.isEmpty()) {
    %>

    <table class="container table">
      <thead>
        <tr>
          <th scope="col">ID</th>
          <th scope="col">Name</th>
          <th scope="col">Department</th>
          <th scope="col">College</th>
          <th scope="col">Operation</th>
        </tr>
      </thead>
      <tbody>
      <% for(Emp mp : empList) { %>
        <tr>
          <th scope="row"><%= mp.getId() %></th>
          <td><%= mp.getName() %></td>
          <td><%= mp.getDept() %></td>
          <td><%= mp.getClg() %></td>
          <td><button><a href="Update?id=<%= mp.getId() %>">Update</a></button></td>
          <td><button><a href="Delete?id=<%= mp.getId() %>">Delete</a></button></td>
        </tr>
      <% } %>
      </tbody>
    </table>
    
    <% } %>
        
    

</body>
</html>
