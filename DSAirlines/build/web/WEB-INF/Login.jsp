<!DOCTYPE html>
<html lang="en">

<head>
    <title>Login &amp; Register</title>

    <link rel="icon" href="https://www-turkishairlines.akamaized.net/theme/img/icons/favicon.ico">

    <!-- CSS -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
          crossorigin="anonymous">
    <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/form-elements.css">
    <link rel="stylesheet" href="assets/css/style.css">

    <style>
        /* Background tetap pakai JPG, tapi tambahkan overlay agar tidak burik */
        body {
            background: url('./assets/img/sign.jpg') center center / cover no-repeat fixed;
            position: relative;
            min-height: 100vh;
            margin: 0;
            padding: 0;
        }

        body::before {
            content: "";
            position: absolute;
            inset: 0;
            background: rgba(0, 0, 0, 0.55); 
            z-index: -1;
        }

        .form-box {
            background: rgba(0, 0, 0, 0.45);
            backdrop-filter: blur(6px);
            border-radius: 12px;
            padding: 30px;
        }


        .form-top {
            background: rgba(255, 255, 255, 0.1);
            padding: 15px;
            border-radius: 6px;
            margin-bottom: 20px;
        }

        .form-top-left h3 {
            margin: 0;
            font-weight: bold;
        }

        .form-top-right i {
            font-size: 40px;
            color: #f8f8f8;
        }

        .form-control {
            height: 50px;
            border-radius: 6px;
        }

        .btn {
            width: 100%;
            height: 45px;
            font-size: 16px;
            font-weight: bold;
            background: #111;
            border: 1px solid #444;
            color: white;
        }

        .btn:hover {
            background: #222;
        }
        
        
    </style>
</head>

<body>

    <!-- HEADER -->
    <jsp:include page="../Templates/AdminHeader.jsp"/>

    <!-- LOGIN CONTENT -->
    <div class="container" style="margin-top: 1.5%; margin-bottom: 120px;">
        <div class="row justify-content-center">
            <div class="col-lg-5">

                <div class="form-box">

                    <div class="form-top d-flex justify-content-between align-items-center">
                        <div class="form-top-left">
                            <h3>Login</h3>
                            <p>Enter your credentials:</p>
                        </div>
                        <div class="form-top-right">
                            <i class="fa fa-lock"></i>
                        </div>
                    </div>

                    <div class="form-bottom">
                        <form action="j_security_check" method="post">

                            <div class="form-group">
                                <label for="form-username">Username</label>
                                <input type="email" required
                                       name="j_username"
                                       id="form-username"
                                       class="form-control"
                                       placeholder="Username...">
                            </div>

                            <div class="form-group">
                                <label for="form-password">Password</label>
                                <input type="password" required
                                       name="j_password"
                                       id="form-password"
                                       class="form-control"
                                       placeholder="Password...">
                            </div>

                            <button type="submit" class="btn">Sign in!</button>

                        </form>
                    </div>

                </div>

            </div>
        </div>
    </div>

    <!-- FOOTER -->
    <jsp:include page="../Templates/Footer.jsp"/>

    <!-- Scripts -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
            crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
            crossorigin="anonymous"></script>

</body>
</html>
