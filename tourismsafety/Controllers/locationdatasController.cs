using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using tourismsafety.Context;
using tourismsafety.Models;

namespace tourismsafety.Controllers
{
    public class locationdatasController : Controller
    {
        private tourismContext db = new tourismContext();

        // GET: locationdatas
        public ActionResult Index()
        {
            var locationid = Session["locationid"];
            var purposeid = Session["purposeid"];
            var role = new List<locationdata>();
            using (var reg = new tourismContext())
            {
                role = reg.Database.SqlQuery<locationdata>("exec findcitydetail @locationid, @purposeid", locationid, purposeid).ToList();
            }
            
            return View(role);
        }

        // GET: locationdatas/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            locationdata locationdata = db.locationdatas.Find(id);
            if (locationdata == null)
            {
                return HttpNotFound();
            }
            return View(locationdata);
        }

        // GET: locationdatas/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: locationdatas/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id,locationid,purposeid,hygieneissues,hygienesolution,foodissues,foodsolution,transportationissues,transportationsolution,beggarissues,beggarssolution,accomodationissues,accomodationsolution,womensafetyissues,womensafetysolution,miscellaneousissues,miscellaneoussolution,culturalissues,culturalsolution")] locationdata locationdata)
        {
            if (ModelState.IsValid)
            {
                db.locationdatas.Add(locationdata);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(locationdata);
        }

        // GET: locationdatas/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            locationdata locationdata = db.locationdatas.Find(id);
            if (locationdata == null)
            {
                return HttpNotFound();
            }
            return View(locationdata);
        }

        // POST: locationdatas/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id,locationid,purposeid,hygieneissues,hygienesolution,foodissues,foodsolution,transportationissues,transportationsolution,beggarissues,beggarssolution,accomodationissues,accomodationsolution,womensafetyissues,womensafetysolution,miscellaneousissues,miscellaneoussolution,culturalissues,culturalsolution")] locationdata locationdata)
        {
            if (ModelState.IsValid)
            {
                db.Entry(locationdata).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(locationdata);
        }

        // GET: locationdatas/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            locationdata locationdata = db.locationdatas.Find(id);
            if (locationdata == null)
            {
                return HttpNotFound();
            }
            return View(locationdata);
        }

        // POST: locationdatas/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            locationdata locationdata = db.locationdatas.Find(id);
            db.locationdatas.Remove(locationdata);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
