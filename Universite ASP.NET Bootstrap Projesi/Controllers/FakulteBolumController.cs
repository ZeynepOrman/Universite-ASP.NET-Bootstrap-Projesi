using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Universite_ASP.NET_Bootstrap_Projesi.Models;

namespace Universite_ASP.NET_Bootstrap_Projesi.Controllers
{
    public class FakulteBolumController : Controller
    {
        // GET: FakulteBolum
        Universite_MVCASPNET_ProjesiEntities db = new Universite_MVCASPNET_ProjesiEntities();
        public ActionResult Index()
        {
            return View(db.Universite_FakulteBolumleri.ToList());
        }

        public ActionResult Hakkimizda()
        {
            return View();
        }

        [HttpGet]

        public ActionResult YeniFakulteBolumleri()
        {
            return View();
        }

        [HttpPost]

        public ActionResult YeniFakulteBolumleri(Universite_FakulteBolumleri save)
        {
            try
            {
                using (Universite_MVCASPNET_ProjesiEntities db = new Universite_MVCASPNET_ProjesiEntities())
                {
                    db.Universite_FakulteBolumleri.Add(save);
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

        public ActionResult DuzenleFakulteBolumleri(int fakultebolumno)

        {
            using (Universite_MVCASPNET_ProjesiEntities db = new Universite_MVCASPNET_ProjesiEntities())
            {
                return View(db.Universite_FakulteBolumleri.Where(x => x.FakulteBolumNo == fakultebolumno).FirstOrDefault());
            }
        }

        [HttpPost]

        public ActionResult DuzenleFakulteBolumleri(int fakultebolumno, Universite_FakulteBolumleri modify)

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


        public ActionResult DeleteFakulteBolumleri(int id)

        {
            using (Universite_MVCASPNET_ProjesiEntities db = new Universite_MVCASPNET_ProjesiEntities())
            {
                return View(db.Universite_FakulteBolumleri.Where(x => x.FakulteBolumNo == id).FirstOrDefault());
            }
        }

        [HttpPost]

        public ActionResult DeleteFakulteBolumleri(int id, Universite_FakulteBolumleri sil)

        {
            try
            {
                using (Universite_MVCASPNET_ProjesiEntities db = new Universite_MVCASPNET_ProjesiEntities())

                {
                    sil = db.Universite_FakulteBolumleri.Where(x => x.FakulteBolumNo == id).FirstOrDefault();
                    db.Universite_FakulteBolumleri.Remove(sil);
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