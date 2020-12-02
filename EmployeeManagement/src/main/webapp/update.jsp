<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>Update the Employee Details</title>
    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css"
          th:href="@{/css/display_form.css}" />
</head>
<body style="text-align: center">
<form action="updateEmployee" method="post">
<h2>Employee Details</h2>
<div class="container">
    <div class="form-row">
        <div class="col-md-6 form-group">
            <label> Employee Code</label>
            <input type="text" class="form-control" required="required" name="code" ${employee.code}>
        </div>
        <div class="col-md-6 form-group">
            <label>First Name</label>
            <input type="text" class="form-control" required="required" name="firstname" ${employee.firstname}>
        </div>
        <div class="col-md-6 form-group">
            <label>Middle Name</label>
            <input type="text" class="form-control" name="middlename" ${employee.middlename}>
        </div>
        <div class="col-md-6 form-group">
            <label>Last Name</label>
            <input type="text" class="form-control" required="required" name="lastname" ${employee.lastname}>
        </div>
        <div class="col-md-6 form-group">
            <label> Date of Birth</label>
            <input type="text" class="form-control" placeholder="yyyy-MM-dd" id="join_datepicker" required="required" name="dob" ${employee.dob}>
        </div>
        <div class="col-md-6 form-group">
            <strong>Gender</strong>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" id="option1" value="Male" name="gender" ${employee.gender}>
                <label class="form-check-label" for="option1">Male</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" id="option2" value="Female" name="gender" ${employee.gender}>
                <label class="form-check-label" for="option2">Female</label>
            </div>
        </div>

        <div class="col-md-6 form-group">
            <label>Address</label>
            <textarea  class="form-control" name="address" ${employee.address}></textarea>
        </div>
    </div>
    <button type="submit" class="btn btn-outline-info btn-block mt-3">Update</button>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
    $(function() {
        $("#join_datepicker").datepicker({dateFormat:"yy-mm-dd"});
        $("#retire_datepicker").datepicker({dateFormat:"yy-mm-dd"});
    });
</script>
</form>
</body>
</html>