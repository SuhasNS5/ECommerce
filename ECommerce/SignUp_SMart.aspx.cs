using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

public partial class SignUp_SMart : System.Web.UI.Page
{
    SqlConnection mycon;
    SqlDataAdapter myadapter;
    SqlCommand mycmd;
    DataSet myds;

    string eno;

    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        mycon = new SqlConnection("server=localhost\\sqlexpress;user id=sa;password=password@1;database=flipkart");
        eno = "insert into customer(First_name,Last_Name,phone_no,password,Email_Id,Address,Zipcode)values(@fn,@ln,@pno,@pw,@eid,@add,@zip)";

        mycmd = new SqlCommand(eno, mycon);

        mycmd.Parameters.Add("@fn", SqlDbType.VarChar, 20);
        mycmd.Parameters.Add("@ln", SqlDbType.VarChar, 20);
        mycmd.Parameters.Add("@pno", SqlDbType.VarChar, 15);
        mycmd.Parameters.Add("@pw", SqlDbType.VarChar, 30);
        mycmd.Parameters.Add("@eid", SqlDbType.VarChar, 40);
        mycmd.Parameters.Add("@add", SqlDbType.VarChar, 300);
        mycmd.Parameters.Add("@zip", SqlDbType.VarChar, 6);

        mycmd.Parameters[0].Value = dbFirstName.Text;
        mycmd.Parameters[1].Value = dbLastName.Text;
        mycmd.Parameters[2].Value = dbPhoneNumber.Text;
        mycmd.Parameters[3].Value = dbPassword.Text;
        mycmd.Parameters[4].Value = dbEmailID.Text;
        mycmd.Parameters[5].Value = dbAddress.Text;
        mycmd.Parameters[6].Value = dbZip.Text;

        try
        {
            mycmd.Connection.Open();
            mycmd.ExecuteNonQuery();
            mycmd.Connection.Close();
        }
        catch (Exception exp)
        {
            //lblMsg.Text = "Error in inserting the record because " + exp.Message.ToString();
            return;
        }

        Response.Redirect("Login_SMart.aspx");
    }
}