<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>Create New Employee</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

</head>
<body>

<div class="container my-3">
    <div class="row">
        <div class="col-md-8 mx-auto">
            <h2 style="text-align: center;">Employee Registration</h2><br>
            <h5 style="color: red" align="center">${codeduplicate}</h5><br>
            <form action="save"  method="post">
                <div class="form-row">
                    <div class="col-md-6 form-group">
                        <label> Employee Code</label>
                        <input type="text" class="form-control" required="required" name="code" >
                    </div>
                    <div class="col-md-6 form-group">
                        <label>First Name</label>
                        <input type="text" class="form-control" required="required" name="firstname">
                    </div>
                    <div class="col-md-6 form-group">
                        <label>Middle Name</label>
                        <input type="text" class="form-control" name="middlename">
                    </div>
                    <div class="col-md-6 form-group">
                        <label>Last Name</label>
                        <input type="text" class="form-control" required="required" name="lastname">
                    </div>
                    <div class="col-md-6 form-group">
                        <label> Date of Birth</label>
                        <input type="text" class="form-control" placeholder="yyyy-MM-dd" id="join_datepicker" required="required" name="dob">
                    </div>
                    <div class="col-md-6 form-group">
                        <strong>Gender</strong>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" id="option1" value="Male" name="gender">
                            <label class="form-check-label" for="option1">Male</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" id="option2" value="Female" name="gender">
                            <label class="form-check-label" for="option2">Female</label>
                        </div>
                    </div>

                    <div class="col-md-6 form-group">
                        <label>Address</label>
                        <textarea  class="form-control" name="address"></textarea>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary btn-block mt-3">Save</button>
            </form>
        </div>
    </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
    $(function() {
        $("#join_datepicker").datepicker({dateFormat:"yy-mm-dd"});
        $("#retire_datepicker").datepicker({dateFormat:"yy-mm-dd"});
    });
</script>
</body>
</html>