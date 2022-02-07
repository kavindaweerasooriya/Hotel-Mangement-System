<!DOCTYPE html>

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

</head>

<body>
    <style>
        #paypal {
            position: absolute;
            left: 50%;
            top: 50%;
            -webkit-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
        }
    </style>

    <div id="fh5co-wrapper">
        <div id="fh5co-page">
            <div id="fh5co-header">
                <header id="fh5co-header-section">
                    <div class="container">
                        <div class="nav-header">
                            <a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
                            <h1 id="fh5co-logo"><a href="index.html">Country inn</a></h1>
                            <nav id="fh5co-menu-wrap" role="navigation">
                                <ul class="sf-menu" id="fh5co-primary-menu">
                                    <li><a href="/Management-System/login">Login</a></li>
                                    <li><a href="/Management-System/register">Register</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </header>

            </div>
            <!-- end:fh5co-header -->
            <div class="fh5co-parallax"
                style="background-image: url(https://shaneumayanga.com/hotel/images/slider1.jpg);"
                data-stellar-background-ratio="0.5">
                <div class="overlay"></div>
                <div class="container">
                    <div class="row">
                        <div
                            class="col-md-12 col-md-offset-0 col-sm-12 col-sm-offset-0 col-xs-12 col-xs-offset-0 text-center fh5co-table">
                            <div class="fh5co-intro fh5co-table-cell">
                                <h1 class="text-center" id="title">Welcome to Country Inn , Choose and Book our rooms
                                </h1>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div id="fh5co-hotel-section">
                <div class="container">
                    <div class="row" id="row">
                        <div class="col-md-4">
                            <div class="hotel-content">
                                <div class="hotel-grid"
                                    style="background-image: url(https://shaneumayanga.com/hotel/images/image-1.jpg);">
                                    <div class="price"><small>For as low as</small><span>$100/night</span>
                                        <button onclick="handlePayment(1)">Buy</button>
                                    </div>
                                </div>
                                <div class="desc">
                                    <h3><a href="#">Hotel Name</a></h3>
                                    <p>Far far away, behind the word mountains, far from the countries Vokalia and
                                        Consonantia, there live the blind texts.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="hotel-content">
                                <div class="hotel-grid"
                                    style="background-image: url(https://shaneumayanga.com/hotel/images/image-2.jpg);">
                                    <div class="price"><small>For as low as</small><span>$100/night</span></div>
                                    <form method="POST" action="./booking">
                                        <a class="book-now text-center" href="#"><i class="ti-calendar"></i>
                                            <input type="hidden" value="2" name="id" />
                                            <input type="submit" value="Book Now" />
                                        </a>
                                    </form>
                                </div>
                                <div class="desc">
                                    <h3><a href="#">Hotel Name</a></h3>
                                    <p>Far far away, behind the word mountains, far from the countries Vokalia and
                                        Consonantia, there live the blind texts.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="hotel-content">
                                <div class="hotel-grid"
                                    style="background-image: url(https://shaneumayanga.com/hotel/images/image-4.jpg);">
                                    <div class="price"><small>For as low as</small><span>$100/night</span></div>
                                    <form method="POST" action="./booking">
                                        <a class="book-now text-center" href="#"><i class="ti-calendar"></i>
                                            <input type="hidden" value="4" name="id" />
                                            <input type="submit" value="Book Now" />
                                        </a>
                                    </form>
                                </div>
                                <div class="desc">
                                    <h3><a href="#">Hotel Name</a></h3>
                                    <p>Far far away, behind the word mountains, far from the countries Vokalia and
                                        Consonantia, there live the blind texts.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="hotel-content">
                                <div class="hotel-grid"
                                    style="background-image: url(https://shaneumayanga.com/hotel/images/image-5.jpg);">
                                    <div class="price"><small>For as low as</small><span>$100/night</span></div>
                                    <form method="POST" action="./booking">
                                        <a class="book-now text-center" href="#"><i class="ti-calendar"></i>
                                            <input type="hidden" value="5" name="id" />
                                            <input type="submit" value="Book Now" />
                                        </a>
                                    </form>
                                </div>
                                <div class="desc">
                                    <h3><a href="#">Hotel Name</a></h3>
                                    <p>Far far away, behind the word mountains, far from the countries Vokalia and
                                        Consonantia, there live the blind texts.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="hotel-content">
                                <div class="hotel-grid"
                                    style="background-image: url(https://shaneumayanga.com/hotel/images/image-6.jpg);">
                                    <div class="price"><small>For as low as</small><span>$100/night</span></div>
                                    <form method="POST" action="./booking">
                                        <a class="book-now text-center" href="#"><i class="ti-calendar"></i>
                                            <input type="hidden" value="6" name="id" />
                                            <input type="submit" value="Book Now" />
                                        </a>
                                    </form>
                                </div>
                                <div class="desc">
                                    <h3><a href="#">Hotel Name</a></h3>
                                    <p>Far far away, behind the word mountains, far from the countries Vokalia and
                                        Consonantia, there live the blind texts.</p>
                                </div>
                            </div>
                        </div>
                        <h1 id="currentOrder"></h1>
                    </div>
                </div>
            </div>
        </div>
        <!-- END fh5co-page -->
        <div id="paypal">
            <div id="paypal-button-container"></div>
        </div>

    </div>
    <!-- END fh5co-wrapper -->
    <!-- Javascripts -->
    <script
        src="https://www.paypal.com/sdk/js?client-id=AfMOkOd4OG7NadULTn3XjWeaUoFXSnWGVvg1TEgnZ4zRmrSzMhm6j6aDhCKh6PSpi45JWhAJRcBM0IgR"
        data-namespace="paypal_sdk"></script>

    <script>
        function handlePayment(orderID) {
            var row = document.getElementById("row");
            row.style.display = "none";
            document.getElementById("title").innerText = "Your order have been saved , please pay to continue"
            paypal_sdk.Buttons({
                createOrder: function (data, actions) {
                    return actions.order.create({
                        purchase_units: [{
                            amount: {
                                value: '100.00'
                            }
                        }]
                    });
                },
                onApprove: function (data, actions) {
                    return actions.order.capture().then(function (details) {
                        axios.post("/booking", {
                            id: orderID,
                        }).then((response) => {
                            console.log(response);
                        });
                    });
                },
                onError: function (err) {
                    console.log('Something went wrong', err);
                }
            }).render('#paypal-button-container');
            alert(orderID);
        }
    </script>
    <script src="https://shaneumayanga.com/hotel/js/jquery-2.1.4.min.js"></script>
    <!-- Dropdown Menu -->
    <script src="https://shaneumayanga.com/hotel/js/hoverIntent.js"></script>
    <script src="https://shaneumayanga.com/hotel/js/superfish.js"></script>
    <!-- Bootstrap -->
    <script src="https://shaneumayanga.com/hotel/js/bootstrap.min.js"></script>
    <!-- Waypoints -->
    <script src="https://shaneumayanga.com/hotel/js/jquery.waypoints.min.js"></script>
    <!-- Counters -->
    <script src="https://shaneumayanga.com/hotel/js/jquery.countTo.js"></script>
    <!-- Stellar Parallax -->
    <script src="https://shaneumayanga.com/hotel/js/jquery.stellar.min.js"></script>
    <!-- Owl Slider -->
    <!-- // <script src="js/owl.carousel.min.js"></script> -->
    <!-- Date Picker -->
    <script src="https://shaneumayanga.com/hotel/js/bootstrap-datepicker.min.js"></script>
    <!-- CS Select -->
    <script src="https://shaneumayanga.com/hotel/js/classie.js"></script>
    <script src="https://shaneumayanga.com/hotel/js/selectFx.js"></script>
    <!-- Flexslider -->
    <script src="https://shaneumayanga.com/hotel/js/jquery.flexslider-min.js"></script>

    <script src="https://shaneumayanga.com/hotel/js/custom.js"></script>


    <!-- AfMOkOd4OG7NadULTn3XjWeaUoFXSnWGVvg1TEgnZ4zRmrSzMhm6j6aDhCKh6PSpi45JWhAJRcBM0IgR -->
</body>

</html>