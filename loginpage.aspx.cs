using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;

namespace WebApplication2
{
    public partial class loginpage : System.Web.UI.Page
    {
        protected void btnlogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(local);Initial catalog=Sample;Integrated security=true");
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from tbl_vnrdate where emailid=@emailid and password=@password", con);
                cmd.Parameters.AddWithValue("@emailid", txtemail.Text);
                cmd.Parameters.AddWithValue("@password", txtpwd.Text);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    if (dr["Status"].ToString().ToLower() == "true")
                    {
                        if (dr["Role"].ToString() == "Student")
                        {
                            
                            Response.Redirect("studenthome.aspx");
                        }
                        if (dr["Role"].ToString() == "HOD")
                        {
                            Response.Redirect("WebForm1.aspx");
                        }
                        else
                        {
                            Response.Redirect("home.aspx");
                        }



                    }
                    else
                    {
                        Response.Write("User is Inactive");
                    }

                }
                else
                {
                    Response.Write("Username or pwd is Invalid!");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                con.Close();
            }

        }
    }
}