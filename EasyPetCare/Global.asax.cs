using System;
using System.Web.Routing;

namespace EasyPetCare
{
    public partial class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            RegisterCustomRoutes(RouteTable.Routes);
        }

        void RegisterCustomRoutes(RouteCollection routes)
        {
            routes.MapPageRoute(
                "ProductByID",
                "Product/{productID}",
                "~/product-info.aspx"
                );
        }
    }
}