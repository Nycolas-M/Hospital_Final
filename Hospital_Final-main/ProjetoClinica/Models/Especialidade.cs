using System.ComponentModel.DataAnnotations;

namespace ProjetoClinica.Models
{
    public class Especialidade
    {
        [Key]
        public int Id { get; set; }
        public string Nome { get; set; }
    }
}