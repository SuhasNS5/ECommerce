using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Home_SMart_User : System.Web.UI.Page
{
    string squery;
    string imageControl;
    SqlConnection mycon;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username"] != null)
        {
            lblMsg.Text = "Hi!, " + Session["Username"];
        }


        if (!this.IsPostBack)
        {
            string constr = "server=localhost\\sqlexpress;user id=sa;password=password@1;database=flipkart";
            using (SqlConnection conn = new SqlConnection(constr))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter("Select img, product_name, product_Desc from Product", conn))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    dlProducts.DataSource = dt;
                    dlProducts.DataBind();
                }
            }
        }
    }

    protected void dlProducts_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}