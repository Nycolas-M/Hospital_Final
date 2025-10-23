using System;
using System.ComponentModel.DataAnnotations;

namespace ProjetoClinica.Models
{
    public class Paciente
    {
        [Key]
        public int Id { get; set; }
        public string Nome { get; set; }
        public string CPF { get; set; }
        public DateTime DataNascimento { get; set; }
        public string Telefone { get; set; }
        public string Email { get; set; }
    }
}