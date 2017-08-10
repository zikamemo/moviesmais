using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MoviesMais.Models;

namespace MoviesMais.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            Categoria modelCategoria = new Categoria();
            ViewBag.Categorias = modelCategoria.ConsultaCategorias();

            ViewBag.CategoriasMenu = modelCategoria.ConsultaCategoriasMenu();

            return View();
        }
    }
}
