using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for changepassword
/// </summary>
public class changepassword
{
    SqlConnection mycon;
    SqlDataAdapter myadapter;
    SqlCommand mycmd;
    DataSet myds;

    string eno;
    public changepassword()
    {
        mycon = new SqlConnection("server=localhost\\sqlexpress;user id=sa;password=password@1;database=flipkart");
    }



    public int update(string Email, string password ,out DataTable dt)

    {
        eno = "update customer set password = '" + password + "'where email_id='" + Email + "'"; ;
        mycmd = new SqlCommand(eno, mycon);
        mycmd.Connection = mycon;
        myadapter = new SqlDataAdapter(mycmd);
        myds = new DataSet();
        myadapter.Fill(myds, "password");

        dt = myds.Tables["password"];

       
            return 1;

        
    }

    //public void UpDate(string Textbox3.Text)
    //{
    //    //for updating records
    //    mycmd = new SqlCommand("update customer set password=@pa where email_id=@eid", mycon);



    //    eno = "select email_Id from customer where email_Id = '" + Email + "'and password='" + Password + "'"; ;
    //    mycmd = new SqlCommand(eno, mycon);
    //    mycmd.Connection = mycon;
    //    myadapter = new SqlDataAdapter(mycmd);
    //    myds = new DataSet();
    //    myadapter.Fill(myds, "login_SMart");

    //    mycmd.Parameters.Add("@na", SqlDbType.NVarChar, 20);
    //    mycmd.Parameters.Add("@add", SqlDbType.NVarChar, 40);
    //    mycmd.Parameters.Add("@en", SqlDbType.NVarChar, 4);
    //    mycmd.Parameters.Add("@age", SqlDbType.Int);
    //    mycmd.Parameters.Add("@pfno", SqlDbType.NChar, 4);

    //    mycmd.Parameters[0].Value = empname;
    //    mycmd.Parameters[1].Value = address;
    //    mycmd.Parameters[2].Value = empno;
    //    mycmd.Parameters[3].Value = age;
    //    mycmd.Parameters[4].Value = pfno;

    //    try
    //    {
    //        mycmd.Connection.Open();
    //        if (mycmd.ExecuteNonQuery() == 0)
    //            Console.WriteLine("Record Not Found");
    //        else
    //            Console.WriteLine("Record Updated");
    //    }
    //    catch (Exception)
    //    {
    //        Console.WriteLine("error in Updating Records");
    //    }
    //    finally
    //    {
    //        mycmd.Connection.Close();
    //    }
}
