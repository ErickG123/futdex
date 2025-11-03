using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace futdex.Models
{
    [Table("Time")]
    public class Time
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public uint Numero { get; set; }

        [Required(ErrorMessage = "Por favor, informe o campeonato")]
        public uint CampeonatoId { get; set; }
        [ForeignKey("CampeonatoId")]
        public Campeonato Campeonato { get; set; }

        [StringLength(100)]
        public string Nome { get; set; }
    }
}
