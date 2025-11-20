<%@page import="models.Flight"%>
<%@page import="models.Seat"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>

    <jsp:include page="Templates/HeadMetaInfo.jsp"/>
    <title>Show Flights</title>

</head>

<body style="background-color:black; background:url('./assets/img/dashboard.jpg'); background-size:cover;">

    <jsp:include page="Templates/CustomerHeader.jsp"/>

    <br><br><br><br>
    <h1 style="color:white; text-align:center;">Your Itinery</h1>
    <br><br>

    <div class="row w-90 m-0 d-flex justify-content-center">

        <!-- Table -->
        <section>
            <table class="table table-inverse table-striped table-bordered table-hover mx-auto table-responsive">
                <thead>
                    <tr>
                        <th>Flight</th>
                        <th>Departure City</th>
                        <th>Arrival City</th>
                        <th>Departure Date</th>
                        <th>Arrival Date</th>
                        <th>Class</th>
                    </tr>
                </thead>

                <tbody>
                    <%
                        ArrayList<Flight> results = (ArrayList<Flight>) request.getAttribute("results");

                        for (int i = 0; i < results.size(); i++) {
                            out.print("<form action='ShowItinery.jsp' method='post'>");
                            out.print("<tr>");
                            out.print("<td><input name='flight_name' readonly value='" + results.get(i).getFlightName() + "'/></td>");
                            out.print("<td><input name='depart_city' readonly value='" + results.get(i).getDepartureCity() + "'/></td>");
                            out.print("<td><input name='arrival_city' readonly value='" + results.get(i).getArrivalCity() + "'/></td>");
                            out.print("<td><input name='depart_date' readonly value='" + results.get(i).getDepartureDate() + "'/></td>");
                            out.print("<td><input name='arrival_date' readonly value='" + results.get(i).getArrivalDate() + "'/></td>");
                            out.print("<td><input name='class_name' readonly value='" + request.getParameter("class") + "'/></td>");
                            out.print("<td><input type='submit' class='btn btn-primary' value='Select'></td>");
                            out.print("</tr>");
                            out.print("</form>");
                        }
                    %>
                </tbody>
            </table>

            <br><br><br><br><br><br><br>

        </section>

    </div> <!-- Wajib ada biar footer tidak miring -->

    <jsp:include page="Templates/Footer.jsp"/>

</body>

<!-- Scripts -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>

</html>
