using ITVidpra_AgriCulture_Project.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Mvc;
using HttpDeleteAttribute = System.Web.Http.HttpDeleteAttribute;
using HttpGetAttribute = System.Web.Http.HttpGetAttribute;
using HttpPostAttribute = System.Web.Http.HttpPostAttribute;
using HttpPutAttribute = System.Web.Http.HttpPutAttribute;

namespace ITVidpra_AgriCulture_Project.Controllers
{

    
    public class CropsController : ApiController
    {
        AgricultureEntities db = new AgricultureEntities();

        //  Get 
        [HttpGet]
        public IHttpActionResult GetCropDetails()
        {

            List<Tbl_Crops> details = db.Tbl_Crops.ToList();
            return Ok(details);
        }
        [HttpGet]
        public IHttpActionResult GetCropDetailsBId(int id)
        {

            var details = db.Tbl_Crops.Where(x=> x.C_No==id);
            return Ok(details);
        }

        //  Post
        [HttpPost]
        public IHttpActionResult CropInsert(Tbl_Crops C)
        {
            db.Tbl_Crops.Add(C);
            db.SaveChanges();
            return Ok();
        }

        //  Put
        [HttpPut]
        public IHttpActionResult CropUpdate(Tbl_Crops C)
        {
            db.Entry(C).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
            return Ok();
        }

        //  Delete
        [HttpDelete]
        public IHttpActionResult CropDelete(Tbl_Crops C)
        {
            db.Entry(C).State = System.Data.Entity.EntityState.Deleted;
            db.SaveChanges();
            return Ok();
        }

    }
}
