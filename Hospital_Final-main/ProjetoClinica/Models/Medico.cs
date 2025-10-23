using System.ComponentModel.DataAnnotations;

namespace ProjetoClinica.Models
{
    public class Medico
    {
        [Key]
        public int Id { get; set; }
        public string Nome { get; set; }
        public string CRM { get; set; }
        public int EspecialidadeId { get; set; }
        public Especialidade Especialidade { get; set; }
    }
}