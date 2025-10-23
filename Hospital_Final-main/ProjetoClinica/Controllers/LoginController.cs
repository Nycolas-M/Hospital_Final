using Microsoft.AspNetCore.Mvc;
using ProjetoClinica.Data;
using ProjetoClinica.Models;
using System.Linq;

namespace ProjetoClinica.Controllers
{
    public class LoginController : Controller
    {
        private readonly ClinicaContext _context;

        public LoginController(ClinicaContext context)
        {
            _context = context;
        }

        [HttpGet]
        public IActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Index(string login, string senha)
        {
            var usuario = _context.Usuarios
                .FirstOrDefault(u => u.Login == login && u.Senha == senha);

            if (usuario != null)
            {
                // Login bem-sucedido → redireciona para Home
                return RedirectToAction("Index", "Home");
            }
            else
            {
                ViewBag.Mensagem = "Login ou senha inválidos.";
                return View();
            }
        }
    }
}
