using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Universite_ASP.NET_Bootstrap_Projesi.Models;

namespace Universite_ASP.NET_Bootstrap_Projesi.Controllers
{
    public class UniversiteController : Controller
    {
        // GET: Universite
        Universite_MVCASPNET_ProjesiEntities db = new Universite_MVCASPNET_ProjesiEntities();
        public ActionResult Home()
        {
            return View();
        }

        public ActionResult News()
        {
            return View();
        }

        public ActionResult About()
        {
            return View();
        }

        public ActionResult Contact()
        {
            return View();
        }

        public ActionResult AdminPanel()
        {
            return View();
        }
    }
}