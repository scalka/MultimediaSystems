using System;
using System.ComponentModel.DataAnnotations;

namespace MvcMovie1.Models
{
    public class Movie
    {
        //The ID field is required by the database for the primary key.
        public int ID { get; set; }
        public string Title { get; set; }
        [Display(Name = "Release Date")]
        [DataType(DataType.Date)]
        public DateTime ReleaseDate { get; set; }
        public string Genre { get; set; }
        public decimal Price { get; set; }
    }
}
