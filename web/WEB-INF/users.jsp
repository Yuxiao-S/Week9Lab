<%-- 
    Document   : users
    Created on : Oct 30, 2022, 10:46:31 PM
    Author     : SYX
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Users</title>
    </head>
    <body>
        <h1>Manage Users</h1>
        
        <p> <c:if test="${message eq 'create'}">${message}</c:if></p>
        

        <form action="users" method="post">
            <table>
                <tr>
                    <th>Email</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th></th><th></th>
                </tr>
                
            <c:forEach items="${user}" var="users">
                <tr>
                <td>${user.email}</td>
                <td>${user.firstName}</td>
                <td>${user.lastName}</td>
                
                <td>${user.role}</td>
                <td>Edit</td>
                <td>Delete</td>
            </c:forEach>
            </table>
        </form>

    </body>
</html>
