using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace futdex.Models
{
    [Table("Campeonato")]
    public class Campeonato
    {
        [Key]
        public uint Id { get; set; }

        [StringLength(100)]
        [Required(ErrorMessage = "Por favor, informe o nome")]
        public string Nome { get; set; }

    }
}
