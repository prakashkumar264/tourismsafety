using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace tourismsafety.Models
{
    public class login
    {
        [Key]
        public int id { get; set; }
        public string pass { get; set; }
        public string name { get; set; }

       
    }

    public class location
    {
        public int id { get; set; }
        public string name { get; set; }
    }

    public class purpose
    {
        public int id { get; set; }

        public string name { get; set; }
    }

    public class search
    {
        public int locationid { get; set; }
        public int purposeid { get; set; }
        public IEnumerable<location> locations { get; set; }

        public IEnumerable<purpose> purposes { get; set; }
    }
}