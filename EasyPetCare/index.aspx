<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="EasyPetCare.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1"
    />
    <title>Easy Pet Care</title>
    <link href="css/styles.css" rel="stylesheet" />
    <link href="css/general.css" rel="stylesheet" />
    <link rel="icon" type="image/x-icon" href="images/logo.svg" />
    <link
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"
      rel="stylesheet"
    />

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Raleway:ital,wght@0,100..900;1,100..900&display=swap"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"
    />
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
      <div class="hero">
        <img src="images/hero.png" alt="dogs" />
        <h1>EASY PET CARE</h1>
        <p>
          Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit
          delectus fugiat assumenda quas animi ipsa aliquid beatae. Quidem quos
          cupiditate perspiciatis vel laborum libero assumenda suscipit
          similique, ea aliquid aut.
        </p>
        <div class="flex">
          <a href="#" class="btn">SEE MORE</a>
        </div>
      </div>
    </header>

    <main class="max-width">
      <section class="carousel-section">
        <div class="carousel-container">
          <div class="swiper mySwiper">
            <div class="swiper-wrapper">
              <div class="swiper-slide">
                <img src="images/promotion-1.png" alt="" />
              </div>
            </div>

            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
            <div class="swiper-pagination"></div>
          </div>
        </div>
      </section>

      <section class="featured-products-section max-width">
        <div class="products-container">
          <div class="heading">
            <p class="featured-head">FEATURED PRODUCTS</p>
            <div class="see-more">
              <a href="#" class="flex"
                >SEE MORE <i class="fa fa-chevron-right" aria-hidden="true"></i
              ></a>
            </div>
          </div>

          <div class="cards-container">
            <a class="products-card" href="#">
              <img src="images/product-1.png" alt="Paws & Fur" />
              <div class="product-info">
                <p class="prod-name">PAWS & FUR (500ml)</p>
                <p class="price">125.00 Pesos</p>
                <div class="discount">
                  <p>250.00 Pesos</p>
                  <span>50% off</span>
                </div>
              </div>
            </a>

            <a class="products-card" href="#">
              <img src="images/product-1.png" alt="Paws & Fur" />
              <div class="product-info">
                <p class="prod-name">PAWS & FUR (500ml)</p>
                <p class="price">125.00 Pesos</p>
                <div class="discount">
                  <p>250.00 Pesos</p>
                  <span>50% off</span>
                </div>
              </div>
            </a>

            <a class="products-card" href="#">
              <img src="images/product-1.png" alt="Paws & Fur" />
              <div class="product-info">
                <p class="prod-name">PAWS & FUR (500ml)</p>
                <p class="price">125.00 Pesos</p>
                <div class="discount">
                  <p>250.00 Pesos</p>
                  <span>50% off</span>
                </div>
              </div>
            </a>

            <a class="products-card" href="#">
              <img src="images/product-1.png" alt="Paws & Fur" />
              <div class="product-info">
                <p class="prod-name">PAWS & FUR (500ml)</p>
                <p class="price">125.00 Pesos</p>
                <div class="discount">
                  <p>250.00 Pesos</p>
                  <span>50% off</span>
                </div>
              </div>
            </a>

            <a class="products-card" href="#">
              <img src="images/product-1.png" alt="Paws & Fur" />
              <div class="product-info">
                <p class="prod-name">PAWS & FUR (500ml)</p>
                <p class="price">125.00 Pesos</p>
                <div class="discount">
                  <p>250.00 Pesos</p>
                  <span>50% off</span>
                </div>
              </div>
            </a>
          </div>
        </div>
      </section>

      <section class="featured-shops-section">
        <div class="heading">
          <p class="featured-head">FEATURED SHOPS</p>
          <div class="see-more">
            <a href="#" class="flex"
              >SEE MORE <i class="fa fa-chevron-right" aria-hidden="true"></i
            ></a>
          </div>
        </div>

        <div class="cards-container">
          <a class="shops-card" href="#">
            <img src="images/pet-shops/pet-shop-1.png" alt="PET SHOP" />
            <div class="shop-info">
              <span>FEATURED</span>
              <p class="shop-name">Pet Express</p>
              <input type="button" value="VIEW SHOP" class="view-shop-btn" />
            </div>
          </a>

          <a class="shops-card" href="#">
            <img src="images/pet-shops/pet-shop-2.png" alt="PET SHOP" />
            <div class="shop-info">
              <span>FEATURED</span>
              <p class="shop-name">Animal House</p>
              <input type="button" value="VIEW SHOP" class="view-shop-btn" />
            </div>
          </a>

          <a class="shops-card" href="#">
            <img src="images/pet-shops/pet-shop-3.png" alt="PET SHOP" />
            <div class="shop-info">
              <span>FEATURED</span>
              <p class="shop-name">Furry Tails</p>
              <input type="button" value="VIEW SHOP" class="view-shop-btn" />
            </div>
          </a>

          <a class="shops-card" href="#">
            <img src="images/pet-shops/pet-shop-4.png" alt="PET SHOP" />
            <div class="shop-info">
              <span>FEATURED</span>
              <p class="shop-name">bow&wow</p>
              <input type="button" value="VIEW SHOP" class="view-shop-btn" />
            </div>
          </a>

          <a class="shops-card" href="#">
            <img src="images/pet-shops/pet-shop-5.png" alt="PET SHOP" />
            <div class="shop-info">
              <span>FEATURED</span>
              <p class="shop-name">Pet's Corner</p>
              <input type="button" value="VIEW SHOP" class="view-shop-btn" />
            </div>
          </a>
        </div>
      </section>

      <section class="how-section max-width">
        <span class="subheading">HOW IT WORKS</span>
        <h1 class="heading">FAST DELIVERY!</h1>
        <p>
          Lorem ipsum, dolor sit amet consectetur adipisicing elit. Blanditiis
          neque in architecto temporibus pariatur, numquam, dolores consequatur
          at quod quae error cum excepturi aspernatur? Dolore recusandae maiores
          repellendus commodi omnis!
        </p>

        <div class="steps">
          <div class="step flex-col">
            <img src="images/steps/check-out.svg" alt="cart" />
            <h1>CHECK OUT</h1>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
          </div>

          <div class="step flex-col">
            <img src="images/steps/delivery.svg" alt="truck" />
            <h1>DELIVERY</h1>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
          </div>

          <div class="step flex-col">
            <img src="images/steps/dog.svg" alt="dog" />
            <h1>HAPPY PETS!</h1>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
          </div>
        </div>
      </section>

      <section class="join-us-section max-width">
        <div class="join-us-container">
          <div class="join-us-img">
            <img src="images/cats.png" alt="cats" />
          </div>

          <div class="join-us-content">
            <h1>Join Us!</h1>
            <p>
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae
              exercitationem sint illum nemo perspiciatis, quidem eum eius, enim
              animi autem iure? Ex nihil, id ab quas et asperiores beatae
              necessitatibus.
            </p>
            <a href="loginpage.html" class="btn-2">LOGIN</a>
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
              <a href="#" class="socmed-icons"
                ><i class="fa fa-facebook-square" aria-hidden="true"></i>
              </a>

              <a href="#" class="socmed-icons"
                ><i class="fa fa-instagram" aria-hidden="true"></i>
              </a>

              <a href="#" class="socmed-icons"
                ><i class="fa fa-twitter" aria-hidden="true"></i>
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

    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
    <script src="script.js"></script>
    </form>
</body>
</html>
