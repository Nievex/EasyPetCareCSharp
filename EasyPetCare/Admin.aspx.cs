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
    public partial class Admin : System.Web.UI.Page
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
            }
        }

        protected void InsertBtn(object sender, EventArgs e)
        {
            int productID;
            if (!int.TryParse(ProductIDTextBox.Text, out productID))
            {
                Response.Write("Invalid product ID format.");
                return;
            }

            string isFeatured = isFeaturedOptions.SelectedValue;
            string category = productCategory.SelectedValue;
            string productName = ProductNameTextBox.Text;
            decimal price;
            if (!decimal.TryParse(PriceTextBox.Text, out price))
            {
                Response.Write("Invalid price format.");
                return;
            }

            if (ImageFileUpload.HasFile)
            {
                string imageFileName = ImageFileUpload.FileName;
                string imageExtension = Path.GetExtension(imageFileName).ToLower();
                if (imageExtension != ".jpg" && imageExtension != ".jpeg" && imageExtension != ".png")
                {
                    Response.Write("Incorrect image format");
                    return;
                }

                byte[] imageBytes = ImageFileUpload.FileBytes;
                InsertProduct(productID, productName, price, imageBytes, isFeatured, category);

                ProductIDTextBox.Text = "";
                isFeaturedOptions.SelectedValue = "no";
                productCategory.SelectedValue = "category-1";
                ProductNameTextBox.Text = "";
                PriceTextBox.Text = "";
                ImageFileUpload.FileContent.Dispose();
                ImageFileUpload.FileContent.Flush();
                ImageFileUpload.Dispose();
            }
            else
            {
                Response.Write("Please select an image file.");
            }
        }

        protected void InsertProduct(int productID, string productName, decimal price, byte[] imageBytes, string isFeatured, string category)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["OracleDBConnectionString"].ConnectionString;

            try
            {
                using (OracleConnection connection = new OracleConnection(connectionString))
                {
                    string insertQuery = "INSERT INTO PRODUCTS (product_id, product_name, price, image, isFeatured, category) VALUES (:productID, :productName, :price, :image, :isFeatured, :category)";

                    using (OracleCommand command = new OracleCommand(insertQuery, connection))
                    {
                        command.Parameters.Add(":productID", OracleDbType.Varchar2).Value = productID;
                        command.Parameters.Add(":productName", OracleDbType.Varchar2).Value = productName;
                        command.Parameters.Add(":price", OracleDbType.Decimal).Value = price;
                        command.Parameters.Add(":image", OracleDbType.Blob).Value = imageBytes;
                        command.Parameters.Add(":isFeatured", OracleDbType.Varchar2).Value = isFeatured;
                        command.Parameters.Add(":category", OracleDbType.Varchar2).Value = category;

                        connection.Open();
                        command.ExecuteNonQuery();
                    }
                }

                Response.Write("Data inserted successfully.");
            }
            catch (Exception ex)
            {
                Console.WriteLine("An error occurred while inserting data: " + ex.Message);
            }
        }
    }
}