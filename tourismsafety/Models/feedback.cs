using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace tourismsafety.Models
{
    public class feedback
    {
        public int id { get; set; }

        public int userid { get; set; }

        public int photogalleryid { get; set; }

        public int locationid { get; set; }

        public int  purposeid { get; set; }

        public string hygiene { get; set; }

        public string food { get; set; }
        public string transportation { get; set; }
        public string beggars { get; set; }
 
        public string accomodation { get; set; }
        public string womensafety { get; set; }
        public string miscellaneous { get; set; }
        public string tips { get; set; }
        public string cultural { get; set; }

        public string emergency { get; set; }
        public string localauthorities { get; set; }
    }
}