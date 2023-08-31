using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegistrationForm
{
    public partial class LogInForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            string connectionString = @"Server=DESKTOP-DS37MS3\SQLEXPRESS;Database=Project;Trusted_Connection=True";
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM Users WHERE  User_ID=@User_ID AND Password=@Password ", con);
                //cmd.Parameters.AddWithValue("@Role", Role.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@User_ID", uidtext.Text);
                cmd.Parameters.AddWithValue("@Password", passtext.Text);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds, "Users");
                if (ds.Tables["Users"].Rows.Count == 0)
                {
                    Validation0.Text=" \t Invalid User...! \n ";
                    Validation.Text = "  \t PLease Enter correct User Id or Password ..!  ";

                }

                else
                {
                    Response.Redirect("Master.aspx");
                }
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegistrationForm.aspx");
        }
    }
}