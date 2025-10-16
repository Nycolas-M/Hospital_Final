using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ProjetoClinica.Data;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ProjetoClinica.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class PacientesController : ControllerBase
    {
        private readonly ClinicaContext _context;

        public PacientesController(ClinicaContext context)
        {
            _context = context;
        }

        [HttpGet]
        public async Task<ActionResult<IEnumerable<object>>> Get()
        {
            var pacientes = await _context.Pacientes
                .Select(p => new { p.Id, p.Nome })
                .ToListAsync();
            
            return Ok(pacientes);
        }
    }
}