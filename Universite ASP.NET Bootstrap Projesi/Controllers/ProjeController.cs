using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Universite_ASP.NET_Bootstrap_Projesi.Models;

namespace Universite_ASP.NET_Bootstrap_Projesi.Controllers
{
    public class ProjeController : Controller
    {
        // GET: OgretimGorevlileri
        Universite_MVCASPNET_ProjesiEntities db = new Universite_MVCASPNET_ProjesiEntities();
        public ActionResult Index()
        {
            return View(db.Universite_Projeler.ToList());
        }

        public ActionResult Hakkimizda()
        {
            return View();
        }

        [HttpGet]

        public ActionResult YeniProje()
        {
            return View();
        }

        [HttpPost]

        public ActionResult YeniProje(Universite_Projeler save)
        {
            try
            {
                using (Universite_MVCASPNET_ProjesiEntities db = new Universite_MVCASPNET_ProjesiEntities())
                {
                    db.Universite_Projeler.Add(save);
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

        public ActionResult DuzenleProje(int projeno)

        {
            using (Universite_MVCASPNET_ProjesiEntities db = new Universite_MVCASPNET_ProjesiEntities())
            {
                return View(db.Universite_Projeler.Where(x => x.ProjeNo == projeno).FirstOrDefault());
            }
        }

        [HttpPost]

        public ActionResult DuzenleProje(int projeno, Universite_Projeler modify)

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


        public ActionResult DeleteProje(int id)

        {
            using (Universite_MVCASPNET_ProjesiEntities db = new Universite_MVCASPNET_ProjesiEntities())
            {
                return View(db.Universite_Projeler.Where(x => x.ProjeNo == id).FirstOrDefault());
            }
        }

        [HttpPost]

        public ActionResult DeleteProje(int id, Universite_Projeler sil)

        {
            try
            {
                using (Universite_MVCASPNET_ProjesiEntities db = new Universite_MVCASPNET_ProjesiEntities())

                {
                    sil = db.Universite_Projeler.Where(x => x.ProjeNo == id).FirstOrDefault();
                    db.Universite_Projeler.Remove(sil);
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