using Microsoft.AspNetCore.Mvc;
using ProjetoClinica.Data;
using ProjetoClinica.Models;
using System.Linq;
using System.Threading.Tasks;

namespace ProjetoClinica.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class LoginController : ControllerBase
    {
        private readonly ClinicaContext _context;

        public LoginController(ClinicaContext context)
        {
            _context = context;
        }

        [HttpPost]
        public async Task<IActionResult> Post([FromBody] Usuario login)
        {
            if (login == null || string.IsNullOrEmpty(login.Email) || string.IsNullOrEmpty(login.Senha))
                return BadRequest("Dados inválidos.");

            var usuario = _context.Usuarios
                .FirstOrDefault(u => u.Email == login.Email && u.Senha == login.Senha);

            if (usuario == null)
                return Unauthorized("E-mail ou senha incorretos.");

            return Ok(new { 
                id = usuario.Id,
                nome = usuario.Nome, 
                email = usuario.Email,
                tipo = usuario.Tipo 
            });
        }
    }
}