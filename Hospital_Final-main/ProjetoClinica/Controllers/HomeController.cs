using Microsoft.AspNetCore.Mvc;

namespace ProjetoClinica.Controllers
{
    public class HomeController : Controller
    {
        [HttpGet]
        public IActionResult Index()
        {
            return View();
        }
    }
}
