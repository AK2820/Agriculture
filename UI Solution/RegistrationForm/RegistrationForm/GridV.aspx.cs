using Newtonsoft.Json.Linq;
using RegistrationForm.Crop;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegistrationForm
{
    public partial class GridV : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

                IEnumerable<CropDeta> Cobj = null;
                HttpClient hc = new HttpClient();
                hc.BaseAddress = new Uri("https://localhost:44309/api/crops");
                var consumeapi = hc.GetAsync("crops");
                consumeapi.Wait();
                var ReadData = consumeapi.Result;
                if (ReadData.IsSuccessStatusCode)
                {
                    var DispalyCrop = ReadData.Content.ReadAsAsync<List<CropDeta>>();
                    DispalyCrop.Wait();
                    Cobj = DispalyCrop.Result;
                    CropsData.DataSource = Cobj;
                    CropsData.DataBind();
                }
                else
                {
                    ErrorMsg.Text = "Please Check API is Running or Not !";
                }
            }
            catch(Exception ex)
            {
                ErrorMsg.Text = "An error occurred while fetching data from the API: " + ex.Message;
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
          
          
        }
    }
}