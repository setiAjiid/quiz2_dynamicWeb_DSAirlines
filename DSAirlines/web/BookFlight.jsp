<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Flight Search</title>

    <link rel="icon" href="https://www-turkishairlines.akamaized.net/theme/img/icons/favicon.ico">

    <!-- CSS -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/form-elements.css">
    <link rel="stylesheet" href="assets/css/style.css">

    <style>
        .input-lg {
            height: 50px;
            padding: 0 20px;
            background: #fff;
            border: 3px solid #fff;
            font-family: 'Roboto', sans-serif;
            font-size: 16px;
            font-weight: 300;
            line-height: 50px;
            color: #555;
            border-radius: 4px;
            transition: all .3s;
        }
    </style>

</head>

<body style="background:url('./assets/img/main.jpg'); background-size:cover;">

    <jsp:include page="Templates/CustomerHeader.jsp"/>

    <div class="top-content">
        <div class="inner-bg" style="padding:0 0 80px 0;">
            <div class="container">

                <div class="row justify-content-center">
                    <div class="col-lg-8">

                        <div class="form-box"
                            style="
                                background: rgba(0,0,0,0.65);
                                padding: 35px 40px;
                                border-radius: 12px;
                                box-shadow: 0 0 18px rgba(0,0,0,0.45);
                                margin-top: 50px;
                                max-width: 900px;
                                margin-left:auto;
                                margin-right:auto;
                            ">

                            <div class="d-flex justify-content-between align-items-center mb-4"
                                style="border-bottom: 1px solid rgba(255,255,255,0.15); padding-bottom: 12px;">
                                <h3 class="m-0" style="color:white; font-weight:500; letter-spacing:1px;">
                                    Complete the Following
                                </h3>
                                <i class="fa fa-plane fa-lg text-white"></i>
                            </div>

                            <div class="form-bottom" style="color:white;">
                                <form action="SearchFlights.do" method="post" class="flight-search-form">

                                    <!-- ROW 1 -->
                                    <div class="row">
                                        <div class="form-group col-lg-4 ui-widget">
                                            <label>From</label>
                                            <input required type="text" name="from" placeholder="Departure City..." class="form-control input-lg" id="osearch">
                                        </div>

                                        <div class="form-group col-lg-4 ui-widget">
                                            <label>To</label>
                                            <input required type="text" name="to" placeholder="Destination City..." class="form-control input-lg" id="dsearch">
                                        </div>

                                        <div class="form-group col-lg-4">
                                            <label>Departure Date</label>
                                            <input required type="date" name="depart" class="form-control input-lg">
                                        </div>
                                    </div>

                                    <!-- ROW 2 -->
                                    <div class="row">
                                        <div class="form-group col-lg-4">
                                            <label>Class</label>
                                            <select required name="class" class="form-control input-lg">
                                                <option value="Economy">Economy</option>
                                                <option value="Business">Business</option>
                                                <option value="First Class">First Class</option>
                                            </select>
                                        </div>

                                        <div class="form-group col-lg-4">
                                            <label>No. of People</label>
                                            <input required type="number" min="1" max="4" name="people" placeholder="No. of People..." class="form-control input-lg">
                                        </div>
                                    </div>

                                    <div class="text-center">
                                        <button type="submit" class="btn btn-primary col-md-4 mt-4">
                                            Search Flights
                                        </button>
                                    </div>

                                </form>
                            </div>

                        </div> <!-- end form-box -->

                    </div> <!-- end col -->
                </div> <!-- end row -->

            </div> <!-- end container -->
        </div> <!-- end inner-bg -->
    </div> <!-- end top-content -->

    <jsp:include page="Templates/Footer.jsp"/>

    <!-- Scripts -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>

    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <script src="assets/autocompleter.js"></script>

</body>
</html>
