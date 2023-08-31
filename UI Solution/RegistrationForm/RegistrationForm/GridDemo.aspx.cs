using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace RegistrationForm
{
    public partial class GridDemo : System.Web.UI.Page
    {
        string connectionString = @"Server=DESKTOP-DS37MS3\SQLEXPRESS;Database=Agriculture;Trusted_Connection=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopulaterGridView();
            }

        }



        void PopulaterGridView()
        {
            DataTable dtbl = new DataTable();
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter("Select * from Tbl_Crops", con);
                da.Fill(dtbl);
            }
            if (dtbl.Rows.Count > 0)
            {
                GridView1.DataSource = dtbl;
                GridView1.DataBind();
            }
            else
            {
                dtbl.Rows.Add(dtbl.NewRow());
                GridView1.DataSource = dtbl;
                GridView1.DataBind();
                GridView1.Rows[0].Cells.Clear();
                GridView1.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                GridView1.Rows[0].Cells[0].Text = "No Data Found...!";
                GridView1.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName.Equals("AddNew"))
                {
                    using (SqlConnection con = new SqlConnection(connectionString))
                    {
                        con.Open();
                        string query = "insert into Tbl_Crops(C_Name,C_Type,C_Duration,C_Description) values(@C_Name,@C_Type,@C_Duration,@C_Description)";
                        SqlCommand cmd = new SqlCommand(query, con);
                        cmd.Parameters.AddWithValue("@C_Name", (GridView1.FooterRow.FindControl("txtC_NameFooter") as TextBox).Text.Trim());
                        cmd.Parameters.AddWithValue("@C_Type", (GridView1.FooterRow.FindControl("txtC_TypeFooter") as TextBox).Text.Trim());
                        cmd.Parameters.AddWithValue("@C_Duration", (GridView1.FooterRow.FindControl("txtC_DurationFooter") as TextBox).Text.Trim());
                        cmd.Parameters.AddWithValue("@C_Description", (GridView1.FooterRow.FindControl("txtC_DescriptionFooter") as TextBox).Text.Trim());
                        cmd.ExecuteNonQuery();
                        PopulaterGridView();
                        SMsgs.Text = "New Record Added";
                        EMsg.Text = "";

                    }


                }
            }
            catch(Exception ex)
            {
                SMsgs.Text = "";
                EMsg.Text = ex.Message;
            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            PopulaterGridView();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            PopulaterGridView();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
               
                    using (SqlConnection con = new SqlConnection(connectionString))
                    {
                        con.Open();
                    string query = "Update Tbl_Crops set C_Name=@C_Name,C_Type=@C_Type,C_Duration=@C_Duration,C_Description=@C_Description where C_No=@id";
                        
                        SqlCommand cmd = new SqlCommand(query, con);
                        cmd.Parameters.AddWithValue("@C_Name", (GridView1.Rows[e.RowIndex]. FindControl("txtC_Name") as TextBox).Text.Trim());
                        cmd.Parameters.AddWithValue("@C_Type", (GridView1.Rows[e.RowIndex].FindControl("txtC_Type") as TextBox).Text.Trim());
                        cmd.Parameters.AddWithValue("@C_Duration", (GridView1.Rows[e.RowIndex].FindControl("txtC_Duration") as TextBox).Text.Trim());
                        cmd.Parameters.AddWithValue("@C_Description", (GridView1.Rows[e.RowIndex].FindControl("txtC_Description") as TextBox).Text.Trim());
                    cmd.Parameters.AddWithValue("@id", Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()));

                    cmd.ExecuteNonQuery();
                    GridView1.EditIndex = -1;
                        PopulaterGridView();
                        SMsgs.Text = "Selected Record Updated";
                        EMsg.Text = "";

                    }


                
            }
            catch (Exception ex)
            {
                SMsgs.Text = "";
                EMsg.Text = ex.Message;
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {

                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    con.Open();
                    string query = "Delete from Tbl_Crops where C_No=@id";

                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@id", Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()));

                    cmd.ExecuteNonQuery();
                    
                    PopulaterGridView();
                    SMsgs.Text = "Selected Record Deleted";
                    EMsg.Text = "";

                }



            }
            catch (Exception ex)
            {
                SMsgs.Text = "";
                EMsg.Text = ex.Message;
            }
        }
    }
    
}