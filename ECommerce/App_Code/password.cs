using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for password
/// </summary>
public class password
{
    SqlConnection mycon;
    SqlDataAdapter myadapter;
    SqlCommand mycmd;
    DataSet myds;
    string eno;


    public password()
    {
        mycon = new SqlConnection("server=localhost\\sqlexpress;user id=sa;password=password@1;database=flipkart");
    }

    public int mobile_check(string Email, string Phone, out DataTable dt)
    {

        eno = "select email_Id from customer where email_Id = '" + Email + "'and phone_no='" + Phone + "'"; ;
        mycmd = new SqlCommand(eno, mycon);
        mycmd.Connection = mycon;
        myadapter = new SqlDataAdapter(mycmd);
        myds = new DataSet();
        myadapter.Fill(myds, "password");

        dt = myds.Tables["password"];

        if (dt.Rows.Count != 0)
        {
            return 1;

        }
        else
        {
            return 0;
        }
    }
}