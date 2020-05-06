<%@page import="com.Hospital" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>HealthCare Hospital Management System</title>
    <link rel="stylesheet" href="Views/css/bootstrap.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
    <link href="Views/css/mdb.min.css" rel="stylesheet">
    <link href="Views/css/addons/datatables2.min.css" rel="stylesheet">
    <link href="Views/css/style.min.css" rel="stylesheet">

    <style>

        .map-container iframe {
            left: 0;
            top: 0;
            height: 100%;
            width: 100%;
            position: absolute;
        }

        table.dataTable thead .sorting:after,
        table.dataTable thead .sorting:before,
        table.dataTable thead .sorting_asc:after,
        table.dataTable thead .sorting_asc:before,
        table.dataTable thead .sorting_asc_disabled:after,
        table.dataTable thead .sorting_asc_disabled:before,
        table.dataTable thead .sorting_desc:after,
        table.dataTable thead .sorting_desc:before,
        table.dataTable thead .sorting_desc_disabled:after,
        table.dataTable thead .sorting_desc_disabled:before {
            bottom: .5em;
        }

    </style>
</head>

<body class="blue lighten-3">

<!--Main Navigation-->
<header>

    <!-- Navbar -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-light white scrolling-navbar">
        <div class="container-fluid">

            <!-- Brand -->
            <a class="navbar-brand waves-effect">
                <strong class="grey-text">Hospital Management</strong>
            </a>

            <!-- Collapse -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <!-- Links -->
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <!-- Left -->
                <ul class="navbar-nav mr-auto">
                </ul>
            </div>
        </div>
    </nav>
</header>
<!--Main Navigation-->

<!--Body Layout-->
<main class="pt-5 mx-lg-1">


    <div class="container-fluid mt-5">
    
        <div class="col-md-12 mb-4">
            <div class="card">
                <div class="card-header"><i class="fas fa-plus mr-3"></i>Insert New Hospital</div>
                <div class="card-body">

                    <form id="formHospital" name="formHospital">

                        Hospital Name
                        <input id="hospitalName" name="hospitalName" type="text"
                               class="form-control form-control-sm">
                        <br> Hospital Email Address
                        <input id="hospitalAddress" name="hospitalAddress" type="text"
                               class="form-control form-control-sm">
                        <br> Phone Number
                        <input id="hospitalPhone" name="hospitalPhone" type="text"
                               class="form-control form-control-sm">
                        <br> Username
                        <input id="hospitalUsername" name="hospitalUsername" type="text"
                               class="form-control form-control-sm">
                        <br> Password
                        <input id="hospitalPassword" name="hospitalPassword" type="text"
                               class="form-control form-control-sm">
                        <br> Appointment Charges
                        <input id="appointmentCharge" name="appointmentCharge" type="text"
                               class="form-control form-control-sm">
                        <br>

                        <input id="btnSave" name="btnSave" type="button" value="Save"
                               class="btn btn-primary">
                        <input type="hidden" id="hidHospitalIDSave" name="hidHospitalIDSave" value="">

                    </form>
                    <br>

                    <div id="alertSuccess" class="alert alert-success"></div>
                    <div id="alertError" class="alert alert-danger"></div>

                    <br>
                </div>
            </div>
        </div>
    </div>

<!--Table two-->
    <div class="container-fluid mt-5">
        <div class="col-md-12 mb-4">

            <div class="card">
                <div class="card-header"><i class="fas fa-list-ul mr-3"></i>View Registered Hospitals</div>

                <div class="card-body">

                    <div class="table-responsive">
                        <div id="divHospitalsGrid">
                            <%
                                Hospital hospitalObj = new Hospital();
                                out.print(hospitalObj.readHospitals());
                            %>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</main>


<script type="text/javascript" src="Views/js/popper.min.js"></script>
<script type="text/javascript" src="Views/js/bootstrap.min.js"></script>
<script type="text/javascript" src="Views/js/mdb.min.js"></script>
<script type="text/javascript">
    // Animations initialization
    new WOW().init();

</script>
<script src="Components/jquery-3.5.0.min.js"></script>
<script src="Components/hospitals.js"></script>
<script type="text/javascript" src="Views/js/addons/datatables2.min.js"></script>

</body>
</html>
