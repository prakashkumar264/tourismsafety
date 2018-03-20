using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace tourismsafety.Models
{
    public class photogallery
    {
        public int id { get; set; }

        public int userid { get; set; }

        public int locationid { get; set; }

        public int feedbackid { get; set; }

        public string location { get; set; }
    }
}