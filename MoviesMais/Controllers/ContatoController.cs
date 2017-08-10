using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MoviesMais.Models;

namespace MoviesMais.Controllers
{
    public class ContatoController : Controller
    {
        public ActionResult Index()
        {
            Categoria modelCategoria = new Categoria();
            ViewBag.Categorias = modelCategoria.ConsultaCategorias();

            ViewBag.CategoriasMenu = modelCategoria.ConsultaCategoriasMenu();

            Contato contato = new Contato();

            contato.Email = "ostentapao1@gmail.com";
            contato.Mensagem = "Contato através do site";
            contato.Nome = "Luiz";
            contato.Telefone = "(16) 98765-4321";

            contato.EnviarEmail();

            return View(contato);
        }
    }
}
