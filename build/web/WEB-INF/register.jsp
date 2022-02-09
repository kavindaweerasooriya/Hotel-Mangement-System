<%-- Document : register Created on : Jan 7, 2022, 5:13:06 PM Author : HP --%>


    <%-- Document : room_already_booked Created on : Jan 9, 2022, 1:14:14 PM Author : Shane --%>

        <%@page contentType="text/html" pageEncoding="UTF-8" %>
            <!DOCTYPE html>
            <html>

            <head>
                <meta charset="utf-8">
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <title>Country inn</title>

                <link rel="stylesheet" href="https://shaneumayanga.com/hotel/css/superfish.css">
                <link rel="stylesheet" href="https://shaneumayanga.com/hotel/css/bootstrap-datepicker.min.css">
                <link rel="stylesheet" href="https://shaneumayanga.com/hotel/css/cs-select.css">
                <link rel="stylesheet" href="https://shaneumayanga.com/hotel/css/cs-skin-border.css">
                <link rel="stylesheet" href="https://shaneumayanga.com/hotel/css/themify-icons.css">
                <link rel="stylesheet" href="https://shaneumayanga.com/hotel/css/flaticon.css">
                <link rel="stylesheet" href="https://shaneumayanga.com/hotel/css/icomoon.css">
                <link rel="stylesheet" href="https://shaneumayanga.com/hotel/css/flexslider.css">
                <link rel="stylesheet" href="https://shaneumayanga.com/hotel/css/style.css">
                <script src="https://shaneumayanga.com/hotel/js/modernizr-2.6.2.min.js"></script>

                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>Room already booked</title>
            </head>

            <body>

                <div class="fh5co-parallax"
                    style="background-image: url(https://shaneumayanga.com/hotel/images/slider1.jpg);"
                    data-stellar-background-ratio="0.5">
                    <div class="overlay"></div>
                    <div class="container">
                        <div class="row">
                            <div
                                class="col-md-12 col-md-offset-0 col-sm-12 col-sm-offset-0 col-xs-12 col-xs-offset-0 text-center fh5co-table">
                                <div class="fh5co-intro fh5co-table-cell">
                                    <h1>Register here!</h1>
                                    <form method="POST" action="./register" id="form">
                                        <input name="user_id" readonly id="user_id" value="${user_id}"  type="hidden"/>
                                        <input name="email" placeholder="enter your email" required />
                                        <input name="password" type="password" placeholder="enter your password" required />
                                        <input type="submit" value="Register" />
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <script>
                    // var user_id = document.getElementById("user_id");
                    // user_id.value = createRandom();
                    // function createRandom() {
                    //     return Math.floor(Math.random() * 10000);
                    // }
                    // user_id.style.display = "none";
                </script>
            </body>

            </html>