<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mycart.aspx.cs" Inherits="EasyPetCare.mycart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta
        name="viewport"
        content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
    <title>My Cart</title>
    <link href="css/styles.css" rel="stylesheet" />
    <link href="css/general.css" rel="stylesheet" />
    <link rel="icon" type="image/x-icon" href="images/logo.svg" />
    <link
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"
        rel="stylesheet" />

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
        href="https://fonts.googleapis.com/css2?family=Raleway:ital,wght@0,100..900;1,100..900&display=swap"
        rel="stylesheet" />
    <link
        rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
</head>
<body>
    <form id="form1" runat="server">
        <header class="max-width">
            <nav class="nav-container">
                <div class="logo flex">
                    <img src="images/logo.svg" alt="logo" />
                    <h1>EASY PET CARE</h1>
                </div>
                <div class="links-container">
                    <a href="https://localhost:44330/index.aspx" class="link">HOME</a>
                    <a href="https://localhost:44330/menu.aspx" class="link">MENU</a>
                    <a class="link" href="https://localhost:44330/mycart.aspx">MY CART</a>
                    <a class="btn" href="https://localhost:44330/loginpage.aspx">PROFILE</a>
                </div>
            </nav>
        </header>

        <main class="max-width">
            <section class="cart-section">

                <div class="cart-products">
                    <div class="select-all">
                        <input type="checkbox" name="" id="" class="chbx" />
                        <h1>Select All</h1>
                    </div>

                    <div class="my-cart-card">
                        <div class="product-name-container">
                            <input type="checkbox" name="" id="" class="chbx" />
                            <p class="product-name">Paws & Fur (500ml)</p>
                        </div>

                        <div class="product-description">
                            <img src="images/product-1.png" alt="" />
                            <div class="description">
                                <p class="description-txt">
                                    Give your beloved pet the spa treatment they deserve with our
                  Paws & Fur Pet Shampoo. Specially formulated to cleanse,
                  condition, and nourish their coat, this gentle shampoo leaves
                  your furry companion feeling fresh, soft, and oh-so-cuddly.
                                </p>
                                <span>500ml</span>
                                <div class="product-price">
                                    <p class="price">P250.00</p>
                                    <div class="qty">
                                        <i class="fa fa-trash" aria-hidden="true"></i>

                                        <i class="fa fa-minus-circle" aria-hidden="true"></i>

                                        <p>0</p>

                                        <i class="fa fa-plus-circle" aria-hidden="true"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="my-cart-card">
                        <div class="product-name-container">
                            <input type="checkbox" name="" id="" class="chbx" />
                            <p class="product-name">Paws & Fur (500ml)</p>
                        </div>

                        <div class="product-description">
                            <img src="images/product-1.png" alt="" />
                            <div class="description">
                                <p class="description-txt">
                                    Give your beloved pet the spa treatment they deserve with our
                  Paws & Fur Pet Shampoo. Specially formulated to cleanse,
                  condition, and nourish their coat, this gentle shampoo leaves
                  your furry companion feeling fresh, soft, and oh-so-cuddly.
                                </p>
                                <span>500ml</span>
                                <div class="product-price">
                                    <p class="price">P250.00</p>
                                    <div class="qty">
                                        <i class="fa fa-trash" aria-hidden="true"></i>

                                        <i class="fa fa-minus-circle" aria-hidden="true"></i>

                                        <p>0</p>

                                        <i class="fa fa-plus-circle" aria-hidden="true"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="order-summary-container">
                    <div class="order-summary">
                        <h1>Order Summary</h1>
                        <div class="cart-item">
                            <div class="item flex-sb">
                                <div class="flex-smpl">
                                    <p class="qty">x2</p>
                                    <p class="product-name-order">Paws & Fur</p>
                                </div>
                                <p class="product-price-order order-price">P250.00</p>
                            </div>

                            <div class="item flex-sb">
                                <div class="flex-smpl">
                                    <p class="qty">x2</p>
                                    <p class="product-name-order">Paws & Fur</p>
                                </div>
                                <p class="product-price-order order-price">P250.00</p>
                            </div>
                        </div>
                    </div>
                    <div class="delivery flex-sb">
                        <p>Delivery Fee</p>
                        <p class="delivery-price order-price">P20.00</p>
                    </div>
                    <div class="flex-sb">
                        <p>Total amount:</p>
                        <p class="total-amt flex-smpl order-price">P250.00</p>
                    </div>
                    <div class="checkout flex-col">
                        <input type="button" value="Checkout" />
                    </div>
                </div>
            </section>
        </main>

        <footer class="footer-section">
            <div class="max-width">
                <div class="footer-links">
                    <div class="footer-logo flex-col">
                        <img src="images/logo.svg" alt="logo" />
                        <div class="social-media-links flex">
                            <a href="#" class="socmed-icons"><i class="fa fa-facebook-square" aria-hidden="true"></i>
                            </a>

                            <a href="#" class="socmed-icons"><i class="fa fa-instagram" aria-hidden="true"></i>
                            </a>

                            <a href="#" class="socmed-icons"><i class="fa fa-twitter" aria-hidden="true"></i>
                            </a>
                        </div>
                    </div>

                    <div class="columns">
                        <div class="column flex-col">
                            <h1>Navigation</h1>
                            <a href="#">Home</a>
                            <a href="#">Menu</a>
                            <a href="#">Help</a>
                            <a href="#">Profile</a>
                        </div>

                        <div class="column flex-col">
                            <h1>Contact</h1>
                            <a href="#">About Us</a>
                            <p>0912 123 1234</p>
                            <p>Random St. CasaNova Novaliches City</p>
                            <p>easypetcare@gmail.com</p>
                        </div>

                        <div class="column flex-col">
                            <h1>Affiliates</h1>
                            <a href="#">Affiliate 1</a>
                            <a href="#">Affiliate 2</a>
                            <a href="#">Affiliate 3</a>
                            <a href="#">Affiliate 4</a>
                        </div>
                    </div>
                </div>
            </div>

            <p class="copyright">&copy; Copyright 2024, Easy Pet Care</p>
        </footer>
    </form>
</body>
</html>
