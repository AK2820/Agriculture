using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace RegistrationForm
{
    public partial class RegistrationForm : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
           
          
                SqlConnection con = new SqlConnection();
                con.ConnectionString = @"server=DESKTOP-DS37MS3\SQLEXPRESS; Initial Catalog=Project; Integrated security=True;";
                con.Open();
                lblmsg.Text = "DataBase Connected ! ";

                con.Close();

                try
                {
                    con.ConnectionString = @"server=DESKTOP-DS37MS3\SQLEXPRESS; Initial Catalog=Project; Integrated security=True;";
                    con.Open();
                    string insertQuery = "INSERT INTO Users ( First_Name,Last_Name , E_mail_Id ,Contact_No ,User_ID ,Password,Role) VALUES (@First_Name,@Last_Name,@E_mail_Id,@Contact_No,@User_ID,@Password,@Role)";
                    SqlCommand com = new SqlCommand(insertQuery, con);
                    com.Parameters.AddWithValue("@First_Name", FN.Text);
                    com.Parameters.AddWithValue("@Last_Name", LN.Text);
                    com.Parameters.AddWithValue("@E_mail_Id", email.Text);
                    com.Parameters.AddWithValue("@Contact_No", txtMobileNumber.Text);
                    com.Parameters.AddWithValue("@User_ID", u_id.Text);
                    com.Parameters.AddWithValue("@Password", Password.Text);
                    com.Parameters.AddWithValue("@Role", Role.SelectedItem.Text);
                    com.ExecuteNonQuery();
                    Response.Write("Submit Successfully");
                    Response.Redirect("LogInForm.aspx");
                    con.Close();
                }
                catch (Exception Ex)
                {
                    Response.Write("Error : " + Ex.ToString());
                }
            }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("LogInForm.aspx");
        }
    }
    }
