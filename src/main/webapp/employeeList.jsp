
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee List</title>
</head>
<body>
    <h1>Employee List</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Date of Birth</th>
            <th>Email</th>
            <th>Joining Date</th>
            <th>Vacation Leave</th>
            <th>Sick Leave</th>
        </tr>
        <% for (Employee employee : employeeList) { %>
            <tr>
                <td><%= employee.getId() %></td>
                <td><%= employee.getName() %></td>
                <td><%= formatDate(employee.getDateOfBirth()) %></td>
                <td><%= employee.getEmail() %></td>
                <td><%= formatDate(employee.getJoiningDate()) %></td>
                <td><%= calculateLeave(employee, "Vacation") %></td>
                <td><%= calculateLeave(employee, "Sick") %></td>
            </tr>
        <% } %>
    </table>
</body>
</html>
