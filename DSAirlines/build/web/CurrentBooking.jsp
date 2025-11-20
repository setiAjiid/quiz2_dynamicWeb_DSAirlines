<%@page import="models.Seat"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
    <jsp:include page="Templates/HeadMetaInfo.jsp"/>
    <title>Current Booking</title>
</head>

<body style="background-color:black; background:url('./assets/img/dashboard.jpg?v2'); background-size:cover;">

    <jsp:include page="Templates/CustomerHeader.jsp"/>

    <br><br><br><br>
    <h1 style="color:white; text-align:center;">Current Bookings</h1>
    <br><br>

    <!-- CONTAINER WRAPPER -->
    <div class="container mb-5">

        <div class="row justify-content-center">
            <div class="col-md-10">

                <div style="
                    backdrop-filter: blur(6px);
                    background: rgba(0, 0, 0, 0.55);
                    padding: 25px;
                    border-radius: 12px;
                    box-shadow: 0 0 25px rgba(0,0,0,0.4);
                ">

                    <table class="table table-dark table-striped table-bordered table-hover table-responsive"
                        style="background: rgba(0,0,0,0.45); color: white; border-radius: 8px; overflow:hidden;">

                        <thead style="background: rgba(255,255,255,0.08); text-align:center;">
                            <tr>
                                <th>#</th>
                                <th>Flight</th>
                                <th>Departure City</th>
                                <th>Arrival City</th>
                                <th>Departure Date</th>
                                <th>Arrival Date</th>
                                <th>Seat Number</th>
                            </tr>
                        </thead>

                        <tbody>
                            <%
                                ArrayList<Seat> seats = (ArrayList<Seat>) request.getAttribute("seats");

                                if (seats != null) {
                                    for (int i = 0; i < seats.size(); i++) {
                                        out.print("<tr style='text-align:center;'>");
                                        out.print("<th scope=\"row\">" + (i+1) + "</th>");
                                        out.print("<td>" + seats.get(i).getFlight().getFlightName() + "</td>");
                                        out.print("<td>" + seats.get(i).getFlight().getDepartureCity() + "</td>");
                                        out.print("<td>" + seats.get(i).getFlight().getArrivalCity() + "</td>");
                                        out.print("<td>" + seats.get(i).getFlight().getDepartureDate() + "</td>");
                                        out.print("<td>" + seats.get(i).getFlight().getArrivalDate() + "</td>");
                                        out.print("<td>" + seats.get(i).getSeatNumber() + "</td>");
                                        out.print("</tr>");
                                    }
                                }
                            %>
                        </tbody>

                    </table>

                </div>
            </div>
        </div>

    </div>

    <!-- FOOTER FIXED -->
    <jsp:include page="Templates/Footer.jsp"/>

    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>

</body>
</html>
