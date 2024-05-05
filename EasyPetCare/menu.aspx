<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menu.aspx.cs" Inherits="EasyPetCare.menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta
        name="viewport"
        content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
    <title>Menu</title>
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
            <section class="menu-section">
                <div class="menu-heading">
                    <h1>Menu</h1>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dictum urna lectus, id luctus nisi cursus et. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed ultricies, quam sed posuere pretium, arcu ligula varius augue, pretium ullamcorper ex mauris vitae libero.</p>
                    <div class="flex">
                        <asp:TextBox ID="searchTextBox" runat="server" placeholder="Search..." CssClass="search-bar" AutoPostBack="true" OnTextChanged="SearchTextBox_TextChanged"></asp:TextBox>
                    </div>
                    <div class="category-grid">
                        <asp:Button runat="server" Text="Dog Food" CssClass="category-btn" OnClick="DogFood_Btn" />
                        <asp:Button runat="server" Text="Dog Treats" CssClass="category-btn" OnClick="DogTreats_Btn" />
                        <asp:Button runat="server" Text="Pet Grooming Supplies" CssClass="category-btn" OnClick="PetGrooming_Btn" />
                        <asp:Button runat="server" Text="Pet Health & Wellness" CssClass="category-btn" OnClick="PetHealth_Btn" />
                        <asp:Button runat="server" Text="Pet Supplies" CssClass="category-btn" OnClick="PetSupplies_Btn" />
                        <asp:Button runat="server" Text="Cat Food" CssClass="category-btn" OnClick="CatFood_Btn" />
                        <asp:Button runat="server" Text="Cat Treats" CssClass="category-btn" OnClick="CatTreats_Btn" />
                        <asp:Button runat="server" Text="Cat Litter & Accessories" CssClass="category-btn" OnClick="CatLitter_Btn" />
                        <asp:Button runat="server" Text="Features" CssClass="category-btn" OnClick="Features_Btn" />
                    </div>
                </div>

                <div class="menu-grid">
                            <asp:Panel ID="productContainer" runat="server" class="cards-container">
                            </asp:Panel>
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

    <script type="text/javascript">
        function transferToProductPage(productID) {
            var url = '<%= ResolveClientUrl("~/menu.aspx/transferToProductPage") %>';
            PageMethods.transferToProductPage(productID, onSuccessTransfer, onErrorTransfer);
        }

        function onSuccessTransfer() {
            // No additional action needed
        }

        function onErrorTransfer(error) {
            console.error('Error occurred during server transfer: ' + error.get_message());
        }
    </script>
</body>
</html>
