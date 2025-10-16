using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ProjetoClinica.Data;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ProjetoClinica.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class MedicosController : ControllerBase
    {
        private readonly ClinicaContext _context;

        public MedicosController(ClinicaContext context)
        {
            _context = context;
        }

        [HttpGet]
        public async Task<ActionResult<IEnumerable<object>>> Get()
        {
            var medicos = await _context.Medicos
                .Select(m => new { m.Id, m.Nome })
                .ToListAsync();
            
            return Ok(medicos);
        }
    }
}