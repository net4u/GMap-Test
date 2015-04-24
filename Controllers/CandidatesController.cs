using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using GMap.Models;

namespace GMap.Controllers
{
    public class CandidatesController : Controller
    {
        private babysitterEntities db = new babysitterEntities();

        // GET: Candidates
        public ActionResult Index()
        {
            var candidates = db.Candidates.Include(c => c.AspNetUsers);
            return View(candidates.ToList());
        }

        // GET: Candidates/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Candidates candidates = db.Candidates.Find(id);
            if (candidates == null)
            {
                return HttpNotFound();
            }
            return View(candidates);
        }

        // GET: Candidates/Create
        public ActionResult Create()
        {
            ViewBag.User = new SelectList(db.AspNetUsers, "Id", "Email");
            return View();
        }

        // POST: Candidates/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdCV,User,Experienta,DateAdd,ImageSRC,Titlu,WhereWhat,Description,Content,Solicitare,Orar,MinSal,MaxSal,Localitate,Address,ZIP,Latitudine,Longitudine,DateStart,DateEnd,Region")] Candidates candidates)
        {
            if (ModelState.IsValid)
            {
                db.Candidates.Add(candidates);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.User = new SelectList(db.AspNetUsers, "Id", "Email", candidates.User);
            return View(candidates);
        }

        // GET: Candidates/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Candidates candidates = db.Candidates.Find(id);
            if (candidates == null)
            {
                return HttpNotFound();
            }
            ViewBag.User = new SelectList(db.AspNetUsers, "Id", "Email", candidates.User);
            return View(candidates);
        }

        // POST: Candidates/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IdCV,User,Experienta,DateAdd,ImageSRC,Titlu,WhereWhat,Description,Content,Solicitare,Orar,MinSal,MaxSal,Localitate,Address,ZIP,Latitudine,Longitudine,DateStart,DateEnd,Region")] Candidates candidates)
        {
            if (ModelState.IsValid)
            {
                db.Entry(candidates).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.User = new SelectList(db.AspNetUsers, "Id", "Email", candidates.User);
            return View(candidates);
        }

        // GET: Candidates/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Candidates candidates = db.Candidates.Find(id);
            if (candidates == null)
            {
                return HttpNotFound();
            }
            return View(candidates);
        }

        // POST: Candidates/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Candidates candidates = db.Candidates.Find(id);
            db.Candidates.Remove(candidates);
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
