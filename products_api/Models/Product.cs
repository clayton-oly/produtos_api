using System.ComponentModel.DataAnnotations;

namespace produtos_api.Models
{
    public class Product
    {
        public int Id { get; set; }

        [Required]
        [StringLength(100)]
        public string Name { get; set; }

        [Range(0.00, double.MaxValue)]
        public decimal Price { get; set; }

        public string Description { get; set; }
    }
}