<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="EasyPetCare.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin</title>
    <link rel="stylesheet" href="../css/admin.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div>
                <label>Product ID</label><br />
                <asp:TextBox CssClass="text-bx" ID="ProductIDTextBox" runat="server"></asp:TextBox>
            </div>
            <div>
                <label>Product name</label><br />
                <asp:TextBox CssClass="text-bx" ID="ProductNameTextBox" runat="server"></asp:TextBox>
            </div>
            <div>
                <label>Price</label><br />
                <asp:TextBox CssClass="text-bx" ID="PriceTextBox" runat="server"></asp:TextBox>
            </div>
            <div>
                <label>Image</label><br />
                <asp:FileUpload CssClass="img-insert-btn" ID="ImageFileUpload" runat="server"></asp:FileUpload>
            </div>

            <div>
                <label>isFeatured</label>
                <asp:DropDownList
                    ID="isFeaturedOptions"
                    AutoPostBack="true"
                    runat="server"
                    CssClass="dropdown">

                    <asp:ListItem Selected="True" Value="no">no</asp:ListItem>
                    <asp:ListItem Value="yes">yes</asp:ListItem>

                </asp:DropDownList>
            </div>

            <div>
                <label>productCategory</label>
                <asp:DropDownList
                    ID="productCategory"
                    AutoPostBack="true"
                    runat="server"
                    CssClass="dropdown">

                    <asp:ListItem Selected="True" Value="category-1">Dog Food</asp:ListItem>
                    <asp:ListItem Value="category-2">Dog Treats</asp:ListItem>
                    <asp:ListItem Value="category-3">Pet Grooming Supplies</asp:ListItem>
                    <asp:ListItem Value="category-4">Pet Health & Wellness</asp:ListItem>
                    <asp:ListItem Value="category-5">Pet Supplies</asp:ListItem>
                    <asp:ListItem Value="category-6">Cat Food</asp:ListItem>
                    <asp:ListItem Value="category-7">Cat Treats</asp:ListItem>
                    <asp:ListItem Value="category-8">Cat Litter & Accessories</asp:ListItem>
                    <asp:ListItem Value="category-9">Features</asp:ListItem>

                </asp:DropDownList>
            </div>
        </div>

        <asp:Button ID="InsertButton" runat="server" Text="Insert" OnClick="InsertBtn" CssClass="insert-btn" />
    </form>
</body>
</html>
