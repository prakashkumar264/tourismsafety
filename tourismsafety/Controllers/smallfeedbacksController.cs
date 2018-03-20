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
    public class smallfeedbacksController : Controller
    {
        private tourismContext db = new tourismContext();

        // GET: smallfeedbacks
        public ActionResult Index()
        {
            return View(db.smallfeedbacks.ToList());
        }

        // GET: smallfeedbacks/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            smallfeedback smallfeedback = db.smallfeedbacks.Find(id);
            if (smallfeedback == null)
            {
                return HttpNotFound();
            }
            return View(smallfeedback);
        }

        // GET: smallfeedbacks/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: smallfeedbacks/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "goodexp,badexp,advice")] smallfeedback smallfeedback)
        {
            if (ModelState.IsValid)
            {
                db.smallfeedbacks.Add(smallfeedback);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(smallfeedback);
        }

        // GET: smallfeedbacks/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            smallfeedback smallfeedback = db.smallfeedbacks.Find(id);
            if (smallfeedback == null)
            {
                return HttpNotFound();
            }
            return View(smallfeedback);
        }

        // POST: smallfeedbacks/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "goodexp,badexp,advice")] smallfeedback smallfeedback)
        {
            if (ModelState.IsValid)
            {
                db.Entry(smallfeedback).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(smallfeedback);
        }

        // GET: smallfeedbacks/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            smallfeedback smallfeedback = db.smallfeedbacks.Find(id);
            if (smallfeedback == null)
            {
                return HttpNotFound();
            }
            return View(smallfeedback);
        }

        // POST: smallfeedbacks/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            smallfeedback smallfeedback = db.smallfeedbacks.Find(id);
            db.smallfeedbacks.Remove(smallfeedback);
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
