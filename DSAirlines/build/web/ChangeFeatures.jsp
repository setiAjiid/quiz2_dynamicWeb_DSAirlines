<%@page import="java.util.ArrayList"%>
<%@page import="models.Features"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <jsp:include page="Templates/HeadMetaInfo.jsp" />
    <title>Change Features</title>
</head>

<body>

    <jsp:include page="Templates/AdminHeader.jsp" />

    <div class="main-wrapper">
        <div class="row">

            <!-- SIDEBAR -->
            <jsp:include page="Templates/AdminPanel.jsp" />

            <!-- MAIN CONTENT -->
            <section class="col-9">
                <div class="admin-content">

                    <h4 style="margin-bottom:20px; font-weight:600;">Update Cabin Features</h4>

                    <form action="ChangeFeatures.do" method="post">

                        <table class="table table-modern table-bordered table-hover table-responsive">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Feature</th>
                                    <th>Economy</th>
                                    <th>Business</th>
                                    <th>First Class</th>
                                </tr>
                            </thead>

                            <tbody>

                                <%
                                    ArrayList<Features> fres = (ArrayList<Features>) application.getAttribute("features");
                                    Features e = fres.get(0);
                                    Features b = fres.get(1);
                                    Features f = fres.get(2);
                                %>

                                <!-- 1. SEAT PITCH -->
                                <tr>
                                    <td>1</td>
                                    <td>Seat Pitch</td>

                                    <td <%
                                        if ((e.getNewSeatPitch() != e.getSeatPitch()) && e.getIsChanged())
                                            out.print("class='bg-success text-white'");
                                    %>>
                                        <input type="number" name="seat_pitch_e" min="29" max="38" required
                                            value="${(features[0])['seatPitch']}" />
                                    </td>

                                    <td <%
                                        if ((b.getNewSeatPitch() != b.getSeatPitch()) && e.getIsChanged())
                                            out.print("class='bg-success text-white'");
                                    %>>
                                        <input type="number" name="seat_pitch_b" min="30" max="87" required
                                            value="${(features[1])['seatPitch']}" />
                                    </td>

                                    <td <%
                                        if ((f.getNewSeatPitch() != f.getSeatPitch()) && e.getIsChanged())
                                            out.print("class='bg-success text-white'");
                                    %>>
                                        <input type="number" name="seat_pitch_f" min="42" max="90" required
                                            value="${(features[2])['seatPitch']}" />
                                    </td>
                                </tr>

                                <!-- 2. SEAT WIDTH -->
                                <tr>
                                    <td>2</td>
                                    <td>Seat Width</td>

                                    <td <%
                                        if ((e.getNewSeatWidth() != e.getSeatWidth()) && e.getIsChanged())
                                            out.print("class='bg-success text-white'");
                                    %>>
                                        <input type="number" name="seat_width_e" min="17" max="20" required
                                            value="${(features[0])['seatWidth']}" />
                                    </td>

                                    <td <%
                                        if ((b.getNewSeatWidth() != b.getSeatWidth()) && e.getIsChanged())
                                            out.print("class='bg-success text-white'");
                                    %>>
                                        <input type="number" name="seat_width_b" min="17" max="34" required
                                            value="${(features[1])['seatWidth']}" />
                                    </td>

                                    <td <%
                                        if ((f.getNewSeatWidth() != f.getSeatWidth()) && e.getIsChanged())
                                            out.print("class='bg-success text-white'");
                                    %>>
                                        <input type="number" name="seat_width_f" min="18.5" max="35.5" required
                                            value="${(features[2])['seatWidth']}" />
                                    </td>
                                </tr>

                                <!-- 3. VIDEO TYPE -->
                                <tr>
                                    <td>3</td>
                                    <td>Video Type</td>

                                    <td <%
                                        if ((e.getNewVideoType() != null)
                                            && !e.getNewVideoType().equals(e.getVideoType())
                                            && e.getIsChanged())
                                            out.print("class='bg-success text-white'");
                                    %>>
                                        <select name="video_e" required>
                                            <option hidden selected value="${(features[0])['videoType']}">
                                                ${(features[0])['videoType']}
                                            </option>
                                            <option value="None">None</option>
                                            <option value="On-Demand TV">On-Demand TV</option>
                                            <option value="Overhead TV">Overhead TV</option>
                                            <option value="Portable Device">Portable Device</option>
                                            <option value="Seatback TV">Seatback TV</option>
                                        </select>
                                    </td>

                                    <td <%
                                        if ((b.getNewVideoType() != null)
                                            && !b.getNewVideoType().equals(b.getVideoType())
                                            && e.getIsChanged())
                                            out.print("class='bg-success text-white'");
                                    %>>
                                        <select name="video_b" required>
                                            <option hidden selected value="${(features[1])['videoType']}">
                                                ${(features[1])['videoType']}
                                            </option>
                                            <option value="None">None</option>
                                            <option value="On-Demand TV">On-Demand TV</option>
                                            <option value="Overhead TV">Overhead TV</option>
                                            <option value="Portable Device">Portable Device</option>
                                            <option value="Seatback TV">Seatback TV</option>
                                        </select>
                                    </td>

                                    <td <%
                                        if ((f.getNewVideoType() != null)
                                            && !f.getNewVideoType().equals(f.getVideoType())
                                            && e.getIsChanged())
                                            out.print("class='bg-success text-white'");
                                    %>>
                                        <select name="video_f" required>
                                            <option hidden selected value="${(features[2])['videoType']}">
                                                ${(features[2])['videoType']}
                                            </option>
                                            <option value="None">None</option>
                                            <option value="On-Demand TV">On-Demand TV</option>
                                            <option value="Overhead TV">Overhead TV</option>
                                            <option value="Portable Device">Portable Device</option>
                                            <option value="Seatback TV">Seatback TV</option>
                                        </select>
                                    </td>
                                </tr>

                                <!-- 4. POWER TYPE -->
                                <tr>
                                    <td>4</td>
                                    <td>Power Type</td>

                                    <td <%
                                        if ((e.getNewPowerType() != null)
                                            && !e.getNewPowerType().equals(e.getPowerType())
                                            && e.getIsChanged())
                                            out.print("class='bg-success text-white'");
                                    %>>
                                        <select name="power_e" required>
                                            <option hidden selected value="${(features[0])['powerType']}">
                                                ${(features[0])['powerType']}
                                            </option>
                                            <option value="None">None</option>
                                            <option value="AC Power">AC Power</option>
                                        </select>
                                    </td>

                                    <td <%
                                        if ((b.getNewPowerType() != null)
                                            && !b.getNewPowerType().equals(b.getPowerType())
                                            && e.getIsChanged())
                                            out.print("class='bg-success text-white'");
                                    %>>
                                        <select name="power_b" required>
                                            <option hidden selected value="${(features[1])['powerType']}">
                                                ${(features[1])['powerType']}
                                            </option>
                                            <option value="None">None</option>
                                            <option value="AC Power">AC Power</option>
                                        </select>
                                    </td>

                                    <td <%
                                        if ((f.getNewPowerType() != null)
                                            && !f.getNewPowerType().equals(f.getPowerType())
                                            && e.getIsChanged())
                                            out.print("class='bg-success text-white'");
                                    %>>
                                        <select name="power_f" required>
                                            <option hidden selected value="${(features[2])['powerType']}">
                                                ${(features[2])['powerType']}
                                            </option>
                                            <option value="None">None</option>
                                            <option value="DC Power">DC Power</option>
                                            <option value="AC Power">AC Power</option>
                                        </select>
                                    </td>

                                </tr>

                                <!-- 5. WI-FI -->
                                <tr>
                                    <td>5</td>
                                    <td>Wi-fi</td>

                                    <td>
                                        <select name="wifi_e" disabled>
                                            <option>No</option>
                                            <option>Yes</option>
                                        </select>
                                    </td>

                                    <td <%
                                        if ((b.getNewWifi() != null)
                                            && !b.getNewWifi().equals(b.getWifi())
                                            && e.getIsChanged())
                                            out.print("class='bg-success text-white'");
                                    %>>
                                        <select name="wifi_b" required>
                                            <option hidden selected value="${(features[1])['wifi']}">
                                                ${(features[1])['wifi']}
                                            </option>
                                            <option>No</option>
                                            <option>Yes</option>
                                        </select>
                                    </td>

                                    <td <%
                                        if ((f.getNewWifi() != null)
                                            && !f.getNewWifi().equals(f.getWifi())
                                            && e.getIsChanged())
                                            out.print("class='bg-success text-white'");
                                    %>>
                                        <select name="wifi_f" required>
                                            <option hidden selected value="${(features[2])['wifi']}">
                                                ${(features[2])['wifi']}
                                            </option>
                                            <option>No</option>
                                            <option>Yes</option>
                                        </select>
                                    </td>
                                </tr>

                                <!-- 6. SEAT TYPE -->
                                <tr>
                                    <td>6</td>
                                    <td>Seat Type</td>

                                    <td <%
                                        if ((e.getNewSeatType() != null)
                                            && !e.getNewSeatType().equals(e.getSeatType())
                                            && e.getIsChanged())
                                            out.print("class='bg-success text-white'");
                                    %>>
                                        <select name="seat_type_e" required>
                                            <option hidden selected value="${(features[0])['seatType']}">
                                                ${(features[0])['seatType']}
                                            </option>
                                            <option value="Standard">Standard</option>
                                            <option value="Recliner">Recliner</option>
                                        </select>
                                    </td>

                                    <td <%
                                        if ((b.getNewSeatType() != null)
                                            && !b.getNewSeatType().equals(b.getSeatType())
                                            && e.getIsChanged())
                                            out.print("class='bg-success text-white'");
                                    %>>
                                        <select name="seat_type_b" required>
                                            <option hidden selected value="${(features[1])['seatType']}">
                                                ${(features[1])['seatType']}
                                            </option>
                                            <option value="Angle Lie Flat">Angle Lie Flat</option>
                                            <option value="Flat Bed">Flat Bed</option>
                                            <option value="Open Suite">Open Suite</option>
                                            <option value="Recliner">Recliner</option>
                                        </select>
                                    </td>

                                    <td <%
                                        if ((f.getNewSeatType() != null)
                                            && !f.getNewSeatType().equals(f.getSeatType())
                                            && e.getIsChanged())
                                            out.print("class='bg-success text-white'");
                                    %>>
                                        <select name="seat_type_f" required>
                                            <option hidden selected value="${(features[2])['seatType']}">
                                                ${(features[2])['seatType']}
                                            </option>
                                            <option value="Closed Suite">Closed Suite</option>
                                            <option value="Angle Lie Flat">Angle Lie Flat</option>
                                            <option value="Flat Bed">Flat Bed</option>
                                            <option value="Open Suite">Open Suite</option>
                                            <option value="Recliner">Recliner</option>
                                        </select>
                                    </td>

                                </tr>

                                <!-- 7. SPECIAL FOOD -->
                                <tr>
                                    <td>7</td>
                                    <td>Special Food</td>

                                    <td>
                                        <select name="special_food_e" disabled>
                                            <option>No</option>
                                            <option>Yes</option>
                                        </select>
                                    </td>

                                    <td>
                                        <select name="special_food_b" disabled>
                                            <option>No</option>
                                            <option>Yes</option>
                                        </select>
                                    </td>

                                    <td <%
                                        if ((f.getNewSpecialFood() != null)
                                            && !f.getNewSpecialFood().equals(f.getSpecialFood())
                                            && e.getIsChanged())
                                            out.print("class='bg-success text-white'");
                                    %>>
                                        <select name="special_food_f" required>
                                            <option hidden selected value="${(features[2])['specialFood']}">
                                                ${(features[2])['specialFood']}
                                            </option>
                                            <option>No</option>
                                            <option>Yes</option>
                                        </select>
                                    </td>
                                </tr>

                                <!-- 8. PRICE -->
                                <tr>
                                    <td></td>
                                    <td>Price</td>

                                    <td <%
                                        if ((e.getNewPrice() != e.getPrice()) && e.getIsChanged())
                                            out.print("class='bg-success text-white'");
                                    %>>
                                        <div class="input-group">
                                            <div class="input-group-addon">$</div>
                                            <input type="number" name="price_e" min="10" max="200" required
                                                value="${(features[0])['price']}" />
                                        </div>
                                    </td>

                                    <td <%
                                        if ((b.getNewPrice() != b.getPrice()) && e.getIsChanged())
                                            out.print("class='bg-success text-white'");
                                    %>>
                                        <div class="input-group">
                                            <div class="input-group-addon">$</div>
                                            <input type="number" name="price_b" min="300" max="350" required
                                                value="${(features[1])['price']}" />
                                        </div>
                                    </td>

                                    <td <%
                                        if ((f.getNewPrice() != f.getPrice()) && e.getIsChanged())
                                            out.print("class='bg-success text-white'");
                                    %>>
                                        <div class="input-group">
                                            <div class="input-group-addon">$</div>
                                            <input type="number" name="price_f" min="1000" max="5000" required
                                                value="${(features[2])['price']}" />
                                        </div>
                                    </td>

                                </tr>

                            </tbody>

                        </table>

                        <% 
                            if (!Features.isChanged) {
                                out.println("<div style='text-align:center; margin-top:15px;'>");
                                out.println("<button class=\"btn btn-primary\" type=\"submit\">Submit</button>");
                                out.println("</div>");
                            } else {
                                out.println("<div class='bg-success text-white' style='padding:10px; text-align:center; border-radius:8px;'>");
                                out.println("Changes are pending approval by the Manager.");
                                out.println("</div>");
                            }
                        %>

                    </form>

                </div>
            </section>

        </div>
    </div>

    <jsp:include page="Templates/Footer.jsp" />

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  </body>
</html>


	
