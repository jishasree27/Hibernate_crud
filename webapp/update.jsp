<%@ page import="com.pojo.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% Emp emp_obj=(Emp)request.getAttribute("user"); %>

 <h2>Update User Details</h2>
    <form action="Update" method="post">
        <input type="hidden" name="id" value="<%= emp_obj.getId()%>" /> 

        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="<%= emp_obj.getName()%>" required/><br/><br/>

        <label for="dept">Department:</label>
        <input type="text" id="dept" name="dept" value="<%= emp_obj.getDept()%>" required/><br/><br/>

        <label for="clg">College:</label>
        <input type="text" id="clg" name="clg" value="<%= emp_obj.getClg()%>" required/><br/><br/>

        <input type="submit" value="Update User"/>
    </form>
</body>
</html>