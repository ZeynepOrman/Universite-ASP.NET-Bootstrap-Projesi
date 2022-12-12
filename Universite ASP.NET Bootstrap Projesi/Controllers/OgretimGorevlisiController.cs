using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Universite_ASP.NET_Bootstrap_Projesi.Models;

namespace Universite_ASP.NET_Bootstrap_Projesi.Controllers
{
    public class OgretimGorevlisiController : Controller
    {
        // GET: OgretimGorevlileri
        Universite_MVCASPNET_ProjesiEntities db = new Universite_MVCASPNET_ProjesiEntities();
        public ActionResult Index()
        {
            return View(db.Universite_OgretimGorevlileri.ToList());
        }

        public ActionResult Hakkimizda()
        {
            return View();
        }

        [HttpGet]

        public ActionResult YeniOgretimGorevlisi()
        {
            return View();
        }

        [HttpPost]

        public ActionResult YeniOgretimGorevlisi(Universite_OgretimGorevlileri save)
        {
            try
            {
                using (Universite_MVCASPNET_ProjesiEntities db = new Universite_MVCASPNET_ProjesiEntities())
                {
                    db.Universite_OgretimGorevlileri.Add(save);
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

        public ActionResult DuzenleOgretimGorevlisi(int ogretimgorevlisino)

        {
            using (Universite_MVCASPNET_ProjesiEntities db = new Universite_MVCASPNET_ProjesiEntities())
            {
                return View(db.Universite_OgretimGorevlileri.Where(x => x.OgretimGorevlisiNo == ogretimgorevlisino).FirstOrDefault());
            }
        }

        [HttpPost]

        public ActionResult DuzenleOgretimGorevlisi(int ogretimgorevlisino, Universite_OgretimGorevlileri modify)

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


        public ActionResult DeleteOgretimGorevlisi(int id)

        {
            using (Universite_MVCASPNET_ProjesiEntities db = new Universite_MVCASPNET_ProjesiEntities())
            {
                return View(db.Universite_OgretimGorevlileri.Where(x => x.OgretimGorevlisiNo == id).FirstOrDefault());
            }
        }

        [HttpPost]

        public ActionResult DeleteOgretimGorevlisi(int id, Universite_OgretimGorevlileri sil)

        {
            try
            {
                using (Universite_MVCASPNET_ProjesiEntities db = new Universite_MVCASPNET_ProjesiEntities())

                {
                    sil = db.Universite_OgretimGorevlileri.Where(x => x.OgretimGorevlisiNo == id).FirstOrDefault();
                    db.Universite_OgretimGorevlileri.Remove(sil);
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