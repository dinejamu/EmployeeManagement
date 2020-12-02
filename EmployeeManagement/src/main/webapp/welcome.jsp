<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Employee Management Screen</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
</head>
<body>
<div align="center">
    <h1 style="color: darksalmon">Employees List</h1>
    <h3>
        <a href="registor.jsp">Add New Employee</a>
    </h3>
    <table border="1">

        <th>Employee Code </th>
        <th>FirstName</th>
        <th>MiddleName</th>
        <th>Lastname</th>
        <th>DOB</th>
        <th>Gender</th>
        <th>Address</th>
        <th class="btn-success">Actions on Row</th>
        <c:forEach var="employee" items="${object}">
            <tr>
                <td>${employee.code}</td>
                <td>${employee.firstname}</td>
                <td>${employee.middlename}</td>
                <td>${employee.lastname}</td>
                <td>${employee.dob}</td>
                <td>${employee.gender}</td>
                <td>${employee.address}</td>
                <td style="text-align: center"> <a href="editEmployee?code=${employee.code}" class="btn-primary">Edit</a> |
                    <a href="deleteEmployee?code=${employee.code}" class="btn-danger">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
