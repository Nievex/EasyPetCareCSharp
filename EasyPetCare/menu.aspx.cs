using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Configuration;
using Oracle.ManagedDataAccess.Client;

namespace EasyPetCare
{
    public partial class menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string connectionString = ConfigurationManager.ConnectionStrings["OracleDBConnectionString"].ConnectionString;
                try
                {
                    using (OracleConnection connection = new OracleConnection(connectionString))
                    {
                        connection.Open();
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine("An error occured: " + ex.Message);
                }

                LoadProducts();
            }
        }
        protected void LoadProducts(string category = "")
        {
            string connectionString = ConfigurationManager.ConnectionStrings["OracleDBConnectionString"].ConnectionString;

            try
            {
                using (OracleConnection connection = new OracleConnection(connectionString))
                {
                    string selectQuery = "SELECT product_id, product_name, price, image, isFeatured, category FROM PRODUCTS";
                    if (!string.IsNullOrEmpty(category))
                    {
                        selectQuery += $" WHERE category = '{category}' ";
                    }

                    using (OracleCommand command = new OracleCommand(selectQuery, connection))
                    {
                        connection.Open();
                        using (OracleDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                string productID = reader["product_id"].ToString();
                                string productName = reader["product_name"].ToString();
                                decimal price = Convert.ToDecimal(reader["price"]);
                                byte[] imageData = (byte[])reader["image"];

                                string productCard = $@"
                                    <div class='products-card' onclick='transferToProductPage({productID});'>
                                        <img src='data:image/jpeg;base64,{Convert.ToBase64String(imageData)}' />
                                        <div class='product-info'>
                                            <p class='prod-name'>{productName}</p>
                                            <p class='price'>{price:C}</p>
                                            <div class='discount'>
                                                <p>{price:C}</p>
                                                <span>50% off</span>
                                            </div>
                                        </div>
                                    </div>";

                                productContainer.Controls.Add(new LiteralControl(productCard));
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("An error occurred while loading products: " + ex.Message);
            }
        }

        protected void transferToProductPage(string productID)
        {
            string url = $"/Product/{productID}";
            Server.Transfer(url, true);
        }

        protected void DogFood_Btn(object sender, EventArgs e)
        {
            LoadProducts("category-1");
        }

        protected void DogTreats_Btn(object sender, EventArgs e)
        {
            LoadProducts("category-2");
        }

        protected void PetGrooming_Btn(object sender, EventArgs e)
        {
            LoadProducts("category-3");
        }

        protected void PetHealth_Btn(object sender, EventArgs e)
        {
            LoadProducts("category-4");
        }

        protected void PetSupplies_Btn(object sender, EventArgs e)
        {
            LoadProducts("category-5");
        }

        protected void CatFood_Btn(object sender, EventArgs e)
        {
            LoadProducts("category-6");
        }

        protected void CatTreats_Btn(object sender, EventArgs e)
        {
            LoadProducts("category-7");
        }

        protected void CatLitter_Btn(object sender, EventArgs e)
        {
            LoadProducts("category-8");
        }

        protected void Features_Btn(object sender, EventArgs e)
        {
            LoadProducts("category-9");
        }

        protected void SearchTextBox_TextChanged(object sender, EventArgs e)
        {
            string searchQuery = searchTextBox.Text.Trim().ToLower();
            FilterProducts(searchQuery);
        }

        protected void FilterProducts(string searchQuery)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["OracleDBConnectionString"].ConnectionString;

            try
            {
                using (OracleConnection connection = new OracleConnection(connectionString))
                {
                    string selectQuery = "SELECT product_id, product_name, price, image, isFeatured, category FROM PRODUCTS";
                    if (!string.IsNullOrEmpty(searchQuery))
                    {
                        selectQuery += $" WHERE LOWER(product_name) LIKE '%{searchQuery}%'";
                    }

                    using (OracleCommand command = new OracleCommand(selectQuery, connection))
                    {
                        connection.Open();
                        using (OracleDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                string productID = reader["product_id"].ToString();
                                string productName = reader["product_name"].ToString();
                                decimal price = Convert.ToDecimal(reader["price"]);
                                byte[] imageData = (byte[])reader["image"];

                                string productCard = $@"
                                    <a href='{ResolveUrl("~/Product/" + productID)}' class='products-card'>
                                        <img src='data:image/jpeg;base64,{Convert.ToBase64String(imageData)}' />
                                        <div class='product-info'>
                                            <p class='prod-name'>{productName}</p>
                                            <p class='price'>{price:C}</p>
                                            <div class='discount'>
                                                <p>{price:C}</p>
                                                <span>50% off</span>
                                            </div>
                                        </div>
                                    </a>";

                                productContainer.Controls.Add(new LiteralControl(productCard));
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("An error occurred while filtering products: " + ex.Message);
            }
        }
    }
}
