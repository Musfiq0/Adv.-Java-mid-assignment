<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Employee</title>
</head>
<body>
    <h1>Add Employee</h1>
    <form action="addEmployee" method="post">
        <label>ID:</label>
        <input type="text" name="id" required><br>

        <label>Name:</label>
        <input type="text" name="name" required><br>

        <label>Date of Birth (dd/MM/yyyy):</label>
        <input type="text" name="dob" required><br>

        <label>Email:</label>
        <input type="email" name="email" required><br>

        <label>Joining Date (dd/MM/yyyy):</label>
        <input type="text" name="joiningDate" required><br>

        <label>Employee Type (1 - Officer, 2 - Staff):</label>
        <input type="number" name="employeeType" required><br>

        <input type="submit" value="Add Employee">
    </form>
</body>
</html>
