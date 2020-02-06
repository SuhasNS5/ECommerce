using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

public partial class forgot_password : System.Web.UI.Page
{
    SqlConnection mycon;
    SqlDataAdapter myadapter;
    SqlCommand mycmd;
    DataSet myds;

    string eno;
    string user_name;
    DataTable dt;

    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        password lObj = new password();
        DataTable da = new DataTable();
        int check;
        check = lObj.mobile_check(TextBox1.Text, TextBox2.Text, out da);
        if (check == 1)
        {
            changepassword cp = new changepassword();
            cp.update(TextBox1.Text, TextBox3.Text, out da);
            lblMsg.Text = "Password changed succesfully";

        }
        else
        {
            lblMsg.Text = "Invalid Email-Id or Mobile Number";
        }
            
    }

    
}