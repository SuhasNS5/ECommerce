using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

public partial class Login_SMart : System.Web.UI.Page
{
    SqlConnection mycon;
    SqlDataAdapter myadapter;
    SqlCommand mycmd;
    DataSet myds;

    string eno;
    string user_name;
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //mycon = new SqlConnection("server=localhost\\sqlexpress;user id=sa;password=password@1;database=flipkart");
        //{
        //    eno = "Select Email_Id,password from customer where Email_Id='" + TextBox1.Text + "'and password='" + TextBox2.Text + "'";
        //    mycmd = new SqlCommand(eno, mycon);
        //    mycmd.Connection = mycon;
        //    myadapter = new SqlDataAdapter(mycmd);
        //    myadapter.SelectCommand = mycmd;
        //    DataSet dt = new DataSet();
        //    myadapter.Fill(dt, "customer");
        //    if (dt.Tables[0].Rows.Count != 0)
        //    {
        //        //lblMsg.Text = "Login Successful!";
        //        Response.Redirect("Home_SMart.aspx");
        //    }
        //    else
        //    {
        //        lblMsg.Text = "Invalid Email-ID or Password";
        //    }
        //}

        login_SMart lObj = new login_SMart();
        DataTable da = new DataTable();
        int check;
        check = lObj.log_in(TextBox1.Text, TextBox2.Text, out da);
        if (check == 1)
        {
            getusername uObj = new getusername();
            user_name = uObj.User(TextBox1.Text, out da);
            TextBox1.Text = "";
            TextBox2.Text = "";
            Session["UserName"] = user_name;
            lblMsg.Text = "Login Successful";

            Response.Redirect("Home_SMart_User.aspx");

        }
        else
        {
            lblMsg.Text = "Invalid User Name or Password";
        }



    }

    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}