using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Universite_ASP.NET_Bootstrap_Projesi.Models;

namespace Universite_ASP.NET_Bootstrap_Projesi.Controllers
{
    public class OgrenciController : Controller
    {
        // GET: Ogrenciler
        Universite_MVCASPNET_ProjesiEntities db = new Universite_MVCASPNET_ProjesiEntities();
        public ActionResult Index()
        {
            return View(db.Universite_Ogrenciler.ToList());
            
        }

        public ActionResult Hakkimizda()
        {
            return View();
        }

        [HttpGet]

        public ActionResult YeniOgrenci()
        {
            return View();
        }

        [HttpPost]

        public ActionResult YeniOgrenci(Universite_Ogrenciler save)
        {
            try
            {
                using (Universite_MVCASPNET_ProjesiEntities db = new Universite_MVCASPNET_ProjesiEntities())
                {
                    db.Universite_Ogrenciler.Add(save);
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

        public ActionResult DuzenleOgrenci(int ogrencino)

        {
            using (Universite_MVCASPNET_ProjesiEntities db = new Universite_MVCASPNET_ProjesiEntities())
            {
                return View(db.Universite_Ogrenciler.Where(x => x.OgrenciNo == ogrencino).FirstOrDefault());
            }
        }

        [HttpPost]

        public ActionResult DuzenleOgrenci(int ogrencino, Universite_Ogrenciler modify)

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


        public ActionResult DeleteOgrenci(int id)

        {
            using (Universite_MVCASPNET_ProjesiEntities db = new Universite_MVCASPNET_ProjesiEntities())
            {
                return View(db.Universite_Ogrenciler.Where(x => x.OgrenciNo == id).FirstOrDefault());
            }
        }

        [HttpPost]

        public ActionResult DeleteOgrenci(int id, Universite_Ogrenciler sil)

        {
            try
            {
                using (Universite_MVCASPNET_ProjesiEntities db = new Universite_MVCASPNET_ProjesiEntities())

                {
                    sil = db.Universite_Ogrenciler.Where(x => x.OgrenciNo == id).FirstOrDefault();
                    db.Universite_Ogrenciler.Remove(sil);
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