<%@page import="models.Flight"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
	<head>

            <jsp:include page="Templates/HeadMetaInfo.jsp"/>
            <title>Change Seats</title>

	</head>

	<body style="background-color:black;  background: url('./assets/img/dashboard.jpg'); background-size:cover;">
            
            <jsp:include page="Templates/AdminHeader.jsp"/>

            <div class="main-wrapper">
                <div class="row">

                    <jsp:include page="Templates/AdminPanel.jsp"/>

                    <section class="col-9">
                        <div class="admin-content">

                            <h4 style="margin-bottom:20px; font-weight:600;">Manage Seat Configuration</h4>

                            <table class="table table-modern table-bordered table-hover table-responsive">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Flight</th>
                                        <th>Economy</th>
                                        <th>Business</th>
                                        <th>First Class</th>
                                        <th>Total Seats</th>
                                        <th>Status</th>
                                    </tr>
                                </thead>

                                <tbody>
                                <%
                                    ArrayList<Flight> flights = (ArrayList<Flight>)(application.getAttribute("flights"));

                                    for (int i = 0; i < flights.size(); i++)
                                    {
                                %>
                                    <tr>
                                        <form action="SetSeats.do" method="post">

                                            <th scope="row"><%= i+1 %></th>

                                            <!-- Flight name -->
                                            <td>
                                                <input type="text" name="flight_name" readonly 
                                                       value="<%= flights.get(i).getFlightName() %>">
                                            </td>

                                            <!-- Economy -->
                                            <td class="<%= (flights.get(i).getOldESeats()!=flights.get(i).getEconomySeats() && flights.get(i).isChanged) ? "bg-success text-white" : "" %>">
                                                <input type="number" name="seats_e" min="0" max="50" required
                                                       value="<%= flights.get(i).getEconomySeats() %>">
                                            </td>

                                            <!-- Business -->
                                            <td class="<%= (flights.get(i).getOldBSeats()!=flights.get(i).getBusinessSeats() && flights.get(i).isChanged) ? "bg-success text-white" : "" %>">
                                                <input type="number" name="seats_b" min="0" max="50" required
                                                       value="<%= flights.get(i).getBusinessSeats() %>">
                                            </td>

                                            <!-- First class -->
                                            <td class="<%= (flights.get(i).getOldFSeats()!=flights.get(i).getFirstSeats() && flights.get(i).isChanged) ? "bg-success text-white" : "" %>">
                                                <input type="number" name="seats_f" min="0" max="50" required
                                                       value="<%= flights.get(i).getFirstSeats() %>">
                                            </td>

                                            <!-- Total seats -->
                                            <td class="<%= (flights.get(i).getOldTSeats()!=flights.get(i).getTotalSeats() && flights.get(i).isChanged) ? "bg-success text-white" : "" %>">
                                                <input type="number" name="seats_t" readonly
                                                       value="<%= flights.get(i).getTotalSeats() %>">
                                            </td>

                                            <!-- Status -->
                                            <td>
                                                <% if (!flights.get(i).isChanged && flights.get(i).isEmpty()) { %>
                                                    <button class="btn btn-primary" type="submit">Change</button>
                                                <% } else if (flights.get(i).isChanged) { %>
                                                    Approval Pending
                                                <% } else { %>
                                                    Can't be changed
                                                <% } %>
                                            </td>

                                        </form>
                                    </tr>
                                <%
                                    }
                                %>
                                </tbody>
      
                            </table>

                            <div id="calc-result" style="color:white; margin-top:15px;"></div>

                            <div style="text-align:right; margin-top:15px;">
                                <button class="btn btn-primary" onclick="calculate_total();">
                                    Calculate Total Seats
                                </button>
                            </div>

                        </div>
                    </section>

                </div>
            </div>

            <jsp:include page="Templates/Footer.jsp"/>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
    
    <script>
    function calculate_total() {
        const resultDiv = document.getElementById("calc-result");
        resultDiv.innerHTML = "";

        // Ambil semua input berdasarkan name
        const names  = document.querySelectorAll("input[name='flight_name']");
        const econ   = document.querySelectorAll("input[name='seats_e']");
        const busi   = document.querySelectorAll("input[name='seats_b']");
        const first  = document.querySelectorAll("input[name='seats_f']");
        const totals = document.querySelectorAll("input[name='seats_t']");

        for (let i = 0; i < names.length; i++) {
            const e = parseInt(econ[i].value)  || 0;
            const b = parseInt(busi[i].value)  || 0;
            const f = parseInt(first[i].value) || 0;
            const t = e + b + f;

            totals[i].value = t;
        }

        alert("Total seats calculated!");
    }

    </script>

  </body>
</html>