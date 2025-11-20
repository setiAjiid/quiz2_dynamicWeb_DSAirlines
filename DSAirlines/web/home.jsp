<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Dimas-Steven Airlines</title>

    <!-- Bootstrap -->
    <link rel="stylesheet"
        href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">

    <style>
        body {
            background: radial-gradient(rgb(118, 10, 138), rgb(5, 11, 18));
            min-height: 100vh;
            margin: 0;
            padding: 0;
        }

        /* Navbar improvement */
        .navbar {
            background: rgba(0, 0, 0, 0.45) !important;
            backdrop-filter: blur(4px);
            border-bottom: 2px solid rgba(255, 255, 255, 0.2);
        }

        .navbar-brand img {
            height: 40px;
            width: auto;
            border-radius: 6px;
            margin-right: 10px;
        }

        /* Carousel smoother */
        .carousel-item img {
            width: 100%;
            height: 70vh;
            object-fit: cover;
            filter: brightness(0.75);
        }

        .carousel-caption h1 {
            font-weight: 700;
            text-shadow: 0 0 20px black;
        }

    </style>
</head>

<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-md navbar-dark">
        <a class="navbar-brand d-flex align-items-center" href="home.jsp">
            <img src="https://www.shutterstock.com/image-vector/d-s-ds-logo-initial-600nw-1438028612.jpg">
            Dimas-Steven Airlines
        </a>

        <div class="collapse navbar-collapse show">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a class="nav-link" href="home.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="Login">Login</a></li>
                <li class="nav-item"><a class="nav-link" href="BookFlight">Book Flight</a></li>
            </ul>
        </div>
    </nav>

    <!-- Carousel -->
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" data-pause="false">

        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>

        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="./assets/img/dark_airplanes.jpg" alt="First slide">
                <div class="carousel-caption d-md-block">
                    <h1>Welcome to DS Airlines!</h1>
                </div>
            </div>

            <div class="carousel-item">
                <img src="./assets/img/explore_airplanes.jpg" alt="Second slide">
                <div class="carousel-caption d-md-block">
                    <h1>Where do you want to explore?</h1>
                </div>
            </div>

            <div class="carousel-item">
                <img src="./assets/img/award_airlines.jpg" alt="Third slide">
                <div class="carousel-caption d-md-block">
                    <h1>Awarded Best Indonesian Airlines 2021–2025!</h1>
                </div>
            </div>
        </div>

        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon"></span>
        </a>
    </div>

    <jsp:include page="Templates/Footer.jsp" />

    <!-- Scripts -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>

</body>
</html>
