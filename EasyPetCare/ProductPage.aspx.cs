using Oracle.ManagedDataAccess.Client;
using System;
using System.Configuration;
using System.Data;
using System.Web.UI;

namespace EasyPetCare
{
    public partial class ProductPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string productID = Request.QueryString["productID"];
                DataRow productRow = GetProductByID(productID);
                if (productRow != null)
                {
                    productName.InnerText = productRow["ProductName"].ToString();
                    productDescription = productRow["Description"].ToString();
                    string imageUrl = "data:image/jpeg;base64," + Convert.ToBase64String((byte[])productRow["Image"]);
                    productImage.ImageUrl = imageUrl;
                }
            }
        }

        protected DataRow GetProductByID(string productID)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["OracleDBConnectionString"].ConnectionString;
            string query = "SELECT * FROM Products WHERE product_id = :ProductID";

            using (OracleConnection connection = new OracleConnection(connectionString))
            using (OracleCommand command = new OracleCommand(query, connection))
            {
                command.Parameters.Add(":ProductID", OracleDbType.Varchar2).Value = productID;

                try
                {
                    connection.Open();

                    OracleDataAdapter adapter = new OracleDataAdapter(command);
                    DataTable dataTable = new DataTable();
                    adapter.Fill(dataTable);

                    if (dataTable.Rows.Count > 0)
                        return dataTable.Rows[0];
                    else
                        return null;
                }
                catch
                {
                    return null;
                }
            }
        }
    }
}
