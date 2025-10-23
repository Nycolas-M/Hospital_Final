using System;
using System.ComponentModel.DataAnnotations;

namespace ProjetoClinica.Models
{
    public class Consulta
    {
        [Key]
        public int Id { get; set; }
        public int PacienteId { get; set; }
        public Paciente Paciente { get; set; }

        public int MedicoId { get; set; }
        public Medico Medico { get; set; }

        public DateTime DataConsulta { get; set; }
        public string Status { get; set; }
    }
}