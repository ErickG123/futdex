using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace futdex.Models
{
    [Table("TIME")]
    public class Time
    {
        [Key]
        [Column("Id")]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public uint Numero { get; set; }

        [Required(ErrorMessage = "Por favor, informe o campeonato")]
        [Column("CampeonatoId")]
        public uint CampeonatoId { get; set; }
        [ForeignKey("CampeonatoId")]
        public Campeonato Campeonato { get; set; }

        [Required]
        [StringLength(50)]
        [Column("Nome")]
        public string Nome { get; set; }

        [StringLength(50)]
        [Column("Cidade")]
        public string Cidade { get; set; }

        [StringLength(2)]
        [Column("Estado")]
        public string Estado { get; set; }

        [StringLength(60)]
        [Column("Estadio")]
        public string Estadio { get; set; }

        [Column("AnoFundacao")]
        public int AnoFundacao { get; set; }

        [StringLength(50)]
        [Column("Tecnico")]
        public string Tecnico { get; set; }

        [StringLength(255)]
        [Column("LogoUrl")]
        public string LogoUrl { get; set; }
    }
}
