<%@page import="models.Features"%>
<%@page import="models.Flight"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Your Itinerary</title>

    <link rel="icon" href="https://www-turkishairlines.akamaized.net/theme/img/icons/favicon.ico">

    <!-- CSS -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
    <link rel="stylesheet" href="./assets/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="./assets/css/form-elements.css">
    <link rel="stylesheet" href="./assets/css/style.css">

    <style>
        /* Font modern & halus */
        * {
            font-family: 'Inter', 'Poppins', 'Segoe UI', sans-serif;
            font-weight: 400 !important;
        }

        .itinerary-container {
            background: rgba(0, 0, 0, 0.55);
            padding: 35px 40px;
            border-radius: 12px;
            box-shadow: 0 0 25px rgba(0, 0, 0, 0.4);
            backdrop-filter: blur(6px);
        }

        /* Table glass dark */
        .table {
            background: rgba(255, 255, 255, 0.12) !important;
            color: #222 !important; /* teks abu gelap */
            border-radius: 10px;
            overflow: hidden;
        }

        /* Header tanpa bold */
        .table thead {
            background: rgba(255, 255, 255, 0.18) !important;
            color: #222 !important;
            font-weight: 400 !important;
        }

        /* Row striped */
        .table-striped tbody tr:nth-of-type(odd) {
            background: rgba(255, 255, 255, 0.16);
        }

        .table-striped tbody tr:nth-of-type(even) {
            background: rgba(255, 255, 255, 0.10);
        }

        /* Cell */
        .table td,
        .table th {
            vertical-align: middle !important;
            color: #222 !important;
            font-weight: 400 !important; /* no bold */
        }

        /* Input text */
        .table input {
            border: none;
            background: transparent;
            width: 100%;
            text-align: center;
            color: #222 !important;
            font-weight: 400 !important;
        }
    </style>




</head>

<body style="background:url('./assets/img/itinerary.jpg'); background-size:cover;">

    <jsp:include page="Templates/CustomerHeader.jsp" />

    <div class="container py-5">
        <div class="row justify-content-center">

            <div class="col-lg-10">

                <div class="itinerary-container">

                    <div class="d-flex justify-content-between align-items-center mb-4"
                        style="border-bottom:1px solid rgba(255,255,255,0.2); padding-bottom:12px;">
                        <h3 class="text-white m-0">Your Itinerary</h3>
                        <i class="fa fa-plane text-white fa-lg"></i>
                    </div>

                    <form action="ChooseFlight.do" method="post">

                        <div class="table-responsive">
                            <table class="table table-light table-striped table-bordered text-center">
                                <thead style="color:rgba(0,0,0,0.7);">
                                    <tr>
                                        <th>#</th>
                                        <th>Flight</th>
                                        <th>Departure Date</th>
                                        <th>Departure City</th>
                                        <th>Arrival Date</th>
                                        <th>Arrival City</th>
                                        <th>Class</th>
                                        <th>Total Price</th>
                                        <th>Select</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <tr>
                                        <th>1</th>

                                        <td>
                                            <input name="flight_name" readonly 
                                                value="<%= request.getParameter("flight_name") %>">
                                        </td>

                                        <td><%= request.getParameter("depart_date") %></td>
                                        <td><%= request.getParameter("depart_city") %></td>
                                        <td><%= request.getParameter("arrival_date") %></td>
                                        <td><%= request.getParameter("arrival_city") %></td>

                                        <td>
                                            <input name="class_name" readonly 
                                                value="<%= request.getParameter("class_name") %>">
                                        </td>

                                        <td>
                                            <%
                                                ArrayList<Features> f = (ArrayList<Features>)(application.getAttribute("features"));
                                                int price = 0;

                                                String cls = request.getParameter("class_name");
                                                if (cls.equals("Economy")) price = f.get(0).getPrice();
                                                else if (cls.equals("Business")) price = f.get(1).getPrice();
                                                else price = f.get(2).getPrice();

                                                out.print(price);
                                            %>
                                        </td>

                                        <td>
                                            <button type="submit" class="btn btn-primary btn-sm">
                                                Select
                                            </button>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                    </form>

                </div>

            </div>
        </div>
    </div>

    <jsp:include page="Templates/Footer.jsp" />

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>

</body>
</html>
