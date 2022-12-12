using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Universite_ASP.NET_Bootstrap_Projesi.Models;

namespace Universite_ASP.NET_Bootstrap_Projesi.Controllers
{
    public class DersController : Controller
    {
        // GET: Dersler
        Universite_MVCASPNET_ProjesiEntities db = new Universite_MVCASPNET_ProjesiEntities();
        public ActionResult Index()
        {
            return View(db.Universite_Dersler.ToList());
        }

        public ActionResult Hakkimizda()
        {
            return View();
        }

        [HttpGet]

        public ActionResult YeniDers()
        {
            return View();
        }

        [HttpPost]

        public ActionResult YeniDers(Universite_Dersler save)
        {
            try
            {
                using (Universite_MVCASPNET_ProjesiEntities db = new Universite_MVCASPNET_ProjesiEntities())
                {
                    db.Universite_Dersler.Add(save);
                    db.SaveChanges();
                }

                return RedirectToAction("Index");

            }

            catch
            {
                return View();
            }

        }

        [HttpGet]

        public ActionResult DuzenleDers(int dersno)

        {
            using (Universite_MVCASPNET_ProjesiEntities db = new Universite_MVCASPNET_ProjesiEntities())
            {
                return View(db.Universite_Dersler.Where(x => x.DersNo == dersno).FirstOrDefault());
            }
        }

        [HttpPost]

        public ActionResult DuzenleDers(int dersno, Universite_Dersler modify)

        {

            try
            {
                using (Universite_MVCASPNET_ProjesiEntities db = new Universite_MVCASPNET_ProjesiEntities())

                {
                    db.Entry(modify).State = System.Data.Entity.EntityState.Modified;
                    db.SaveChanges();
                }

                return RedirectToAction("Index");


            }

            catch
            {

                return View();
            }

        }

        [HttpGet]


        public ActionResult DeleteDers(int id)

        {
            using (Universite_MVCASPNET_ProjesiEntities db = new Universite_MVCASPNET_ProjesiEntities())
            {
                return View(db.Universite_Dersler.Where(x => x.DersNo == id).FirstOrDefault());
            }
        }

        [HttpPost]

        public ActionResult DeleteDers(int id, Universite_Dersler sil)

        {
            try
            {
                using (Universite_MVCASPNET_ProjesiEntities db = new Universite_MVCASPNET_ProjesiEntities())

                {
                    sil = db.Universite_Dersler.Where(x => x.DersNo == id).FirstOrDefault();
                    db.Universite_Dersler.Remove(sil);
                    db.SaveChanges();
                }


                return RedirectToAction("Index");


            }



            catch

            {
                return View();

            }
        }
    }
}