using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using tourismsafety.Context;
using tourismsafety.Models;

namespace tourismsafety.Controllers
{
    public class loginController : Controller
    {
        // GET: login
        public ActionResult login()
        {

            search reg = new search();
            reg.locations = getlocation();
            reg.purposes = getpurpose();
            return View(reg);
        }

        public List<location> getlocation()
        {
            var role = new List<location>();
            using (var reg = new tourismContext())
            {
                role = reg.Database.SqlQuery<location>("exec getlocationdetails").ToList();
            }
            return role;
        }

        public List<purpose> getpurpose()
        {
            var role = new List<purpose>();
            using (var reg = new tourismContext())
            {
                role = reg.Database.SqlQuery<purpose>("exec getpurpose").ToList();
            }
            return role;
        }

        [HttpPost]
        public ActionResult submitlocation(search loginmodel, FormCollection formcollection)
        {
            var registerteacher = new List<search>();

            using (var reg = new tourismContext())
            {
                var locationid = new SqlParameter("@locationid", SqlDbType.Int)
                {
                    Direction = System.Data.ParameterDirection.Input,
                    Value = loginmodel.locationid
                };
                
                var purposeid = new SqlParameter("@purposeid", SqlDbType.Int)
                {
                    Direction = System.Data.ParameterDirection.Input,
                    Value = loginmodel.purposeid
                };

                Session["locationid"] = locationid;
                Session["purposeid"] = purposeid;

            }

 
            return RedirectToAction("Index", "locationdatas");
        }


    }
}