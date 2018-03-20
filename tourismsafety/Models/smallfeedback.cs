using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace tourismsafety.Models
{
    public class smallfeedback
    {
       
       [Key]

        public string goodexp { get; set; }

        public string badexp { get; set; }

        public string advice { get; set; }
    }
}