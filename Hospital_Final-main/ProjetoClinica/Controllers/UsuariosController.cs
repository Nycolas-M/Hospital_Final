using Microsoft.AspNetCore.Mvc;
using ProjetoClinica.Data;
using System.Linq;

namespace ProjetoClinica.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class UsuariosController : ControllerBase
    {
        private readonly ClinicaContext _context;

        public UsuariosController(ClinicaContext context)
        {
            _context = context;
        }

        [HttpPost("login")]
        public IActionResult Login([FromBody] Usuario login)
        {
            var usuario = _context.Usuarios
                .FirstOrDefault(u => u.Email == login.Email && u.Senha == login.Senha);

            if (usuario == null)
                return Unauthorized();

            return Ok(new { usuario.Nome, usuario.Tipo });
        }
    }
}
