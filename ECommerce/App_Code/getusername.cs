using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.ClientServices;
using System.Configuration;

/// <summary>
/// Summary description for getusername
/// </summary>
public class getusername
{
    SqlConnection mycon;
    SqlDataAdapter myadapter;
    SqlCommand mycmd;
    DataSet myds;
    string squery;
    string user_query;
    string name = "";


    public getusername()
    {
        mycon = new SqlConnection("server=localhost\\sqlexpress;user id=sa;password=password@1;database=flipkart");
    }

    public string User(string email, out DataTable dt)
    {
        user_query = "select first_name from customer where email_Id = '" + email + "'";
        myadapter = new SqlDataAdapter(user_query, mycon);
        myds = new DataSet();
        myadapter.Fill(myds, "getusername");

        dt = myds.Tables["getusername"];

        if (dt.Rows.Count != 0)
        {
            foreach (DataRow row in dt.Rows)
            {
                name = row[0].ToString();
            }
            return name;

        }
        else
        {
            return name;
        }
    }
}